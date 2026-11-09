# Signal clock replay regression

Source: https://github.com/temporalio/sdk-rust/issues/1737

This is the issue author's constructed 43-event, SDK-only history. It is not a
production server export. The original report also describes a captured Java
time-skipping-server history; that captured history is not included here.

`history.json` is the exact upstream fixture, with SHA-256:
`ce52146e1b9106481ca9b3b1dd1a754aeb52a24a429fb4c36d4561d3b777ac19`.

`control-plus5ms.json` moves only the timestamps of events 22–43 forward by 5 ms,
as in the issue's `make_control.py`. Its SHA-256 is:
`2df46b7b6770727e23b300d1f08a1b56d998a33ea4bfba6451c0ab71efc4afb8`.

The `.bin` fixtures are protobuf serializations of these JSON files, produced
with the official Python Temporal API bindings (`temporalio==1.35.0`):

```python
from pathlib import Path
from google.protobuf.json_format import Parse
from temporalio.api.history.v1 import History

for stem in ("history", "control-plus5ms"):
    source = Path(stem + ".json")
    history = Parse(source.read_text(), History())
    Path(stem + ".bin").write_bytes(history.SerializeToString())
```

Binary inputs isolate replay from a separate limitation: the current bridge's
`runReplayHistoryJson` parser rejects canonical camelCase protobuf JSON with
`missing field event_id`. The binary fixtures have the same events and payloads;
no event, command, reference or payload was repaired to make replay run.

Run only these offline tests from the repository's Nix shell:

```sh
cabal test temporal-sdk-tests --test-options='--match "Replay signal clock"'
```

No Temporal server or activity implementation is required. The 14-day timer is
replayed from history and does not wait for elapsed wall-clock time.

**These are local, desired-behavior regression tests, not a completed fix.**
On main `e57a0ae8f7458777d06c82d77dfa8cde14eed58c`, with Core pinned to
`43d582b57fbc63d858a35f11ebfee193bda00834`, the timing control passes and the
two original-history checks fail:

- Signal time is `.188` rather than the original signal-processing task's `.183`.
- The original history schedules an extra `enabled` operation, then supplies
  `true` to `load_context`. The timing control receives `{"timezone":"UTC"}`
  and preserves the intended operation sequence.

The test observes workflow values through a test-only IORef sink. Those values
never determine workflow branches. Worker shutdown joins its executor before
the assertions read the sink.

Do not use `runReplayHistoryProto` returning `Right ()` as the only assertion.
For this incomplete history, the erroneous workflow emits a failure command on
the final activation, then Core emits its normal `LANG_REQUESTED` replay-end
eviction. The helper returns `Right ()` for both histories. The explicit clock,
operation and payload assertions are what catch the defect.
