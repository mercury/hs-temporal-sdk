//! Test-only fixtures for exercising the Haskell <-> Tokio FFI bridge.
//!
//! The Haskell test suites link the same compiled library as production code,
//! so these cannot be gated behind `#[cfg(test)]`. The `hs_temporal_test_`
//! prefix marks them as never-for-production; nothing outside of test suites
//! should call them.

use crate::runtime::{Capability, HsCallback, MVar, RuntimeRef};
use ffi_convert::*;
use std::sync::atomic::{AtomicU64, Ordering};
use std::time::Duration;

/// Total number of [`CTestResource`] values dropped since process start.
static TEST_RESOURCE_DROPS: AtomicU64 = AtomicU64::new(0);

/// An opaque resource whose destructor is observable from Haskell through
/// [`hs_temporal_test_resource_drop_count`], letting tests prove that a result
/// produced after the Haskell waiter was interrupted is still reclaimed.
pub struct CTestResource {
    _private: u8,
}

impl Drop for CTestResource {
    fn drop(&mut self) {
        TEST_RESOURCE_DROPS.fetch_add(1, Ordering::SeqCst);
    }
}

impl RawPointerConverter<CTestResource> for CTestResource {
    fn into_raw_pointer(self) -> *const CTestResource {
        convert_into_raw_pointer(self)
    }

    fn into_raw_pointer_mut(self) -> *mut CTestResource {
        convert_into_raw_pointer_mut(self)
    }

    unsafe fn from_raw_pointer(
        ptr: *const CTestResource,
    ) -> Result<Self, UnexpectedNullPointerError> {
        unsafe { take_back_from_raw_pointer(ptr) }
    }

    unsafe fn from_raw_pointer_mut(
        ptr: *mut CTestResource,
    ) -> Result<Self, UnexpectedNullPointerError> {
        unsafe { take_back_from_raw_pointer_mut(ptr) }
    }
}

/// Resolve with a fresh [`CTestResource`] after `delay_millis` milliseconds.
///
/// # Safety
///
/// Haskell <-> Tokio FFI bridge invariants.
#[unsafe(no_mangle)]
pub unsafe extern "C" fn hs_temporal_test_delayed_resource(
    runtime: *mut RuntimeRef,
    delay_millis: u64,
    mvar: *mut MVar,
    cap: Capability,
    error_slot: *mut *mut CArray<u8>,
    result_slot: *mut *mut CTestResource,
) {
    let runtime_ref = unsafe { runtime.as_ref().unwrap() };
    let hs: HsCallback<CTestResource, CArray<u8>> = HsCallback {
        cap,
        mvar,
        error_slot,
        result_slot,
    };
    runtime_ref.runtime.future_result_into_hs(hs, async move {
        tokio::time::sleep(Duration::from_millis(delay_millis)).await;
        Ok(CTestResource { _private: 0 })
    })
}

/// # Safety
///
/// Haskell FFI bridge invariants.
#[unsafe(no_mangle)]
pub unsafe extern "C" fn hs_temporal_drop_test_resource(resource: *mut CTestResource) {
    unsafe { drop(CTestResource::from_raw_pointer_mut(resource)) }
}

#[unsafe(no_mangle)]
pub extern "C" fn hs_temporal_test_resource_drop_count() -> u64 {
    TEST_RESOURCE_DROPS.load(Ordering::SeqCst)
}
