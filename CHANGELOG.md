# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Removed

- Drop the `kube-apiserver-burnrate.rules` recording rules, which no Giant Swarm alert or dashboard consumes.

### Changed

- `Kubernetes / StatefulSets` dashboard: CPU and network rate panels use `$__rate_interval` instead of a fixed 3m window, so they stay smooth with a 60s cAdvisor scrape interval. Upstream kubernetes-mixin no longer ships this dashboard, so the generated file is maintained here.
- Replace team-turtles with team-tenet
- 2026-01-14 - updated to mixins release 1.4.1
- 2023-04-03 - updated to mixins release `release-0.12`
