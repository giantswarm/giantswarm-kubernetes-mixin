# Customizing upstream Grafana Dashboards

Generated via https://github.com/kubernetes-monitoring/kubernetes-mixin

To update the dashboards:
- Update the mixin upstream branch in `jsonnetfile.json` and run `jb install`
- Run the following command `jsonnet -J vendor -m files/dashboards -e '(import "mixin.libsonnet").grafanaDashboards'`

