# Research Notes

## Sources Reviewed

- SAFe glossary: <https://framework.scaledagile.com/glossary>
- SAFe Features and Capabilities: <https://framework.scaledagile.com/features-and-capabilities/>
- SAFe Story: <https://framework.scaledagile.com/story/>
- C4 model: <https://c4model.com/>
- C4 container diagram: <https://c4model.com/diagrams/container>

## Findings Applied

- SAFe's requirements hierarchy is useful because it creates multiple abstraction levels between strategy and stories. The skillset uses that ladder, but avoids copying SAFe process mechanics.
- SAFe distinguishes capabilities from features by scale and scope; the skillset uses capabilities for ability-level decomposition and features for bounded delivery packets.
- SAFe treats stories as small user-perspective descriptions with acceptance criteria and tests. The skillset uses stories as the final implementation handoff, not as a complete product memory.
- SAFe's concepts of enablers, architectural runway, NFRs, and acceptance criteria are useful checks against fake vertical slicing.
- C4 supplies a better architecture abstraction hierarchy than dumping architecture into stories. The skillset uses C4 views as decision artifacts tied to value stream, capability, feature, and story levels.

## Local Skills Reviewed For Incorporation

- `superpowers:brainstorming`
- `superpowers:writing-plans`
- `superpowers:subagent-driven-development`
- `superpowers:executing-plans`
- `superpowers:test-driven-development`
- `superpowers:verification-before-completion`
- `skill-creator`
- `writing-skills`

## Design Hypothesis

The value of this skillset is not SAFe compliance. The value is preserving context as work moves from broad intent to code:

1. Each level answers a different question.
2. Each level produces a small artifact.
3. Each artifact has an exit gate.
4. Architecture decisions stay visible through C4 views.
5. Implementation starts only after the active story packet is small enough for human review and concrete enough for planning.

