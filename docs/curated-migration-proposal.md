# Architecture skill migration proposal — S1

Status: **partial sunset candidate**, reviewed 6 October 2026. No repository deletion or archive is proposed now.

| Local scope | Curated overlap | Coverage that must remain |
| --- | --- | --- |
| Implementation plans, stories and task traceability | `notion-spec-to-implementation` | Testable acceptance, local artifacts, selected parent chain, architecture decisions and evidence; Notion requires the user's chosen destination and authorized remote artifacts. |
| Goal/outcome framing | `define-goal` | Customer/value-stream boundaries, flow measures and capability hypotheses; persistent goal-tool use requires an explicit goal request. |
| Value streams, capability shaping and C4 | No equivalent found | Keep the unique local domain guidance and bounded orchestration. |

Comparison source: [pinned official curated catalog](https://github.com/openai/skills/tree/49f948faa9258a0c61caceaf225e179651397431/skills/.curated), 39 entries. Installed plugins are a separate catalog.

Pilot migration on one bounded initiative only when the user chooses the matching system. Compare outcome, ownership, architecture, acceptance criteria and upward/downward evidence coverage, including the one-story and larger-backlog scenarios. A replacement must preserve standalone local work without mandatory remote publication or added hierarchy. Keep the original packages available for rollback. Decide any maintenance retirement after coverage evidence; similarity alone does not establish whole-repository replacement.
