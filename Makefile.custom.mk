##@ Mixin

.PHONY: generate
generate: ## Regenerate Prometheus rules and Grafana dashboards from the mixin.
	jsonnet -J vendor -S -e 'std.manifestYamlDoc((import "mixin.libsonnet").prometheusRules)' | yq -P > files/prometheus-rules/rules.yml
	jsonnet -J vendor -m files/dashboards -e '(import "mixin.libsonnet").grafanaDashboards'
