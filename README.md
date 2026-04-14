# Architectural Execution Skills

This repository contains an agent-agnostic skillset for turning broad product and architecture intent into implementation-ready work without falling into specification-driven development cliches.

The working model is an abstraction ladder:

`value stream -> capability -> feature -> C4 architecture view -> story packet -> implementation plan -> TDD execution -> verification`

It borrows useful vocabulary from SAFe and useful zoom levels from C4, but it is not a SAFe implementation kit. The goal is a lightweight architecture/execution pipeline that keeps context human-sized and hands off to installed planning, execution, TDD, and verification skills instead of reinventing them.

## Skills

Use these named skills when they are installed. If one is not available in your agent runtime, use the equivalent workflow described by the skill's artifact and exit gate.

- `orchestrating-architecture-execution` routes work through the pipeline.
- `discovering-value-streams` frames customer outcomes, triggers, flow, measures, and candidate capabilities.
- `shaping-capabilities` turns value-stream friction into capability increments and feature candidates.
- `shaping-features` turns capabilities into bounded feature packets with acceptance criteria, NFRs, dependencies, and architecture impact.
- `modeling-c4-architecture` creates decision-oriented C4 views for scope, ownership, integration, deployment, and implementation planning.
- `slicing-stories` creates 7-10 story implementation packets and hands off to planning.
- `reviewing-traceability` checks vertical coherence before coding.

## Complementary Workflow Capabilities

These capabilities are intentionally dependencies, not duplicated here. Use the named skill when it is installed; otherwise use the equivalent workflow available in your agent runtime:

- `superpowers:brainstorming`; otherwise design discovery for ambiguity and design conversations at each abstraction level.
- `superpowers:writing-plans`; otherwise implementation planning for executable plans.
- `superpowers:subagent-driven-development` or `superpowers:executing-plans`; otherwise plan execution or parallel task execution for carrying plans through code changes.
- `superpowers:test-driven-development`; otherwise test-driven development for implementation discipline.
- `superpowers:verification-before-completion`; otherwise evidence-before-completion for completion claims.

## Design Decisions

- SAFe is used as a vocabulary for value stream, capability, feature, story, enabler, NFR, and flow concepts. The skillset avoids SAFe roles, events, certification content, and proprietary diagrams.
- C4 is used as an architecture zoom model. Diagrams are required only when they answer a delivery decision.
- Story packets are capped at 7-10 active stories to preserve human context.
- Enabler work is allowed only when tied to a user story, NFR, architectural runway, compliance, or delivery-risk reduction.
- Every level has an artifact contract and an exit gate before moving downward.

## Research Basis

- Scaled Agile Framework glossary, including definitions for capabilities, features, stories, enablers, architectural runway, acceptance criteria, benefit hypothesis, development value streams, and flow metrics: <https://framework.scaledagile.com/glossary>
- SAFe Features and Capabilities article: <https://framework.scaledagile.com/features-and-capabilities/>
- SAFe Story article: <https://framework.scaledagile.com/story/>
- C4 model official site and diagram guidance: <https://c4model.com/>
- C4 container diagram guidance, including scope, audience, and purpose: <https://c4model.com/diagrams/container>

SAFe and Scaled Agile Framework are registered trademarks of Scaled Agile, Inc. This repository is an independent skillset and does not reproduce SAFe training material or proprietary diagrams.

## Suggested Use

Start with:

```text
Use the orchestrating-architecture-execution skill when installed to turn this initiative into a staged artifact pipeline. If it is not installed, use an equivalent architecture-to-execution workflow.
```

Then let the orchestrator route to the appropriate level-specific skill.
