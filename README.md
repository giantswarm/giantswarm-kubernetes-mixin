# Customising upstream Grafana Dashboards

Generated via https://github.com/kubernetes-monitoring/kubernetes-mixin

To update the dashboards run:

```
jsonnet -J vendor -m files/dashboards -e '(import "mixin.libsonnet").grafanaDashboards'
```
