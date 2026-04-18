#!/usr/bin/env bash
set -euo pipefail

test -f README.md
test -f skills/orchestrating-architecture-execution/SKILL.md
test -f skills/discovering-value-streams/SKILL.md
test -f skills/shaping-capabilities/SKILL.md
test -f skills/shaping-features/SKILL.md
test -f skills/modeling-c4-architecture/SKILL.md
test -f skills/slicing-stories/SKILL.md
test -f skills/reviewing-traceability/SKILL.md
test -f tests/scenarios/checkout-architecture-execution.prompt.md
test -f tests/scenarios/checkout-architecture-execution.expected.yaml
test -f tests/scenarios/checkout-architecture-execution.actual.yaml
test -x scripts/run-exercise.sh

ruby -e 'require "yaml"; Dir["skills/*/SKILL.md"].each { |path| YAML.load_file(path) }; YAML.load_file("tests/scenarios/checkout-architecture-execution.expected.yaml"); YAML.load_file("tests/scenarios/checkout-architecture-execution.actual.yaml"); puts "yaml parses"'

grep -q '^name: orchestrating-architecture-execution$' skills/orchestrating-architecture-execution/SKILL.md
grep -q 'discovering-value-streams' skills/orchestrating-architecture-execution/SKILL.md
grep -q 'shaping-capabilities' skills/orchestrating-architecture-execution/SKILL.md
grep -q 'shaping-features' skills/orchestrating-architecture-execution/SKILL.md
grep -q 'modeling-c4-architecture' skills/orchestrating-architecture-execution/SKILL.md
grep -q 'slicing-stories' skills/orchestrating-architecture-execution/SKILL.md
grep -q 'reviewing-traceability' skills/orchestrating-architecture-execution/SKILL.md
grep -q '7-10 active stories' skills/orchestrating-architecture-execution/SKILL.md
grep -q 'Architecture theater' skills/orchestrating-architecture-execution/SKILL.md
grep -q 'Value Stream Brief' skills/discovering-value-streams/SKILL.md
grep -q 'Capability Brief' skills/shaping-capabilities/SKILL.md
grep -q 'Feature Packet' skills/shaping-features/SKILL.md
grep -q 'C4 Decision Brief' skills/modeling-c4-architecture/SKILL.md
grep -q 'Implementation Packet' skills/slicing-stories/SKILL.md
grep -q 'Traceability Review' skills/reviewing-traceability/SKILL.md

./scripts/run-exercise.sh

echo "validation ok"
