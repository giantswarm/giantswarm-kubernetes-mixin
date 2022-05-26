# Customizing upstream Grafana Dashboards

Generated via https://github.com/kubernetes-monitoring/kubernetes-mixin

### Prometheus rules (records)

To update the records run:

```
jsonnet -J vendor -S -e 'std.manifestYamlDoc((import "mixin.libsonnet").prometheusRules)' | yq -P >files/prometheus-rules/rules.yml
```

### Grafana dashboards

To update the dashboards:

- Run `jb install github.com/kubernetes-monitoring/kubernetes-mixin@<branch_name>`
- Run the following command `jsonnet -J vendor -m files/dashboards -e '(import "mixin.libsonnet").grafanaDashboards'`
