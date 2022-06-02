# Customizing upstream Grafana Dashboards

Generated via https://github.com/kubernetes-monitoring/kubernetes-mixin

To update the dashboards:
- Run `jb install github.com/kubernetes-monitoring/kubernetes-mixin@<branch_name>`
- Run the following command `jsonnet -J vendor -m files/dashboards -e '(import "mixin.libsonnet").grafanaDashboards'`

