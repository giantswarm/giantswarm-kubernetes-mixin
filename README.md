# Customizing upstream Prometheus Rules and Grafana Dashboards

Mixins are jsonnet templates that we can use to generate prometheus recording and alerting rules, and grafana dashboards.

In this repo, we generate the [official kubernetes mixins](https://github.com/kubernetes-monitoring/kubernetes-mixin) with our custom config.


## Update

To update the current mixin to an upstream release:
- Check for a suitable [release](https://github.com/kubernetes-monitoring/kubernetes-mixin#releases)
- Run:
    ```bash
    jb install github.com/kubernetes-monitoring/kubernetes-mixin@<branch_name>
    ```

### Prometheus rules (records)

To update the recording rules run:
```bash
jsonnet -J vendor -S -e 'std.manifestYamlDoc((import "mixin.libsonnet").prometheusRules)' | yq -P >files/prometheus-rules/rules.yml
```

### Grafana dashboards

To update the dashboards run:
```bash
jsonnet -J vendor -m files/dashboards -e '(import "mixin.libsonnet").grafanaDashboards'
```

### Next steps

Once you have generated updated mixins here, you can propagate them to
- [Prometheus rules repository](https://github.com/giantswarm/prometheus-rules/)
- [Grafana dashboards repository](https://github.com/giantswarm/dashboards/)
