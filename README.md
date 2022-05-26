# Customising upstream Grafana Dashboards

Generated via https://github.com/kubernetes-monitoring/kubernetes-mixin

### Prometheus rules (records)

To update the records run:

```
jsonnet -J vendor -o files/prometheus-rules/rules.json -e '(import "mixin.libsonnet").prometheusRules'
```

then convert `rules.json` to yaml.


### Grafana dashboards

To update the dashboards run:

```
jsonnet -J vendor -m files/dashboards -e '(import "mixin.libsonnet").grafanaDashboards'
```
