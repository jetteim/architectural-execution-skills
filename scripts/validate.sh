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


./scripts/run-exercise.sh
python3 scripts/test-skill-evaluator.py
python3 scripts/check-skill-package.py

echo "validation ok"
