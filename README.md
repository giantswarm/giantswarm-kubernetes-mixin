# Customizing upstream Prometheus Rules and Grafana Dashboards

Mixins are jsonnet templates that we can use to generate prometheus recording and alerting rules, and grafana dashboards.

In this repo, we generate the [official kubernetes mixins](https://github.com/kubernetes-monitoring/kubernetes-mixin) with our custom config.


## Update

Renovate opens a pull request for each new upstream [release](https://github.com/kubernetes-monitoring/kubernetes-mixin/tags). It updates `jsonnetfile.json`, `jsonnetfile.lock.json` and `vendor/`.

To update the current mixin to an upstream release by hand:
- Check for a suitable [release](https://github.com/kubernetes-monitoring/kubernetes-mixin/tags)
- Run:
    ```bash
    jb install github.com/kubernetes-monitoring/kubernetes-mixin@<tag>
    ```

### Prometheus rules and Grafana dashboards

To regenerate `files/prometheus-rules/rules.yml` and `files/dashboards/` run:
```bash
make generate
```

`files/dashboards/statefulset.json` is maintained here: upstream no longer ships it. `make generate` leaves it unchanged.

### Next steps

Once you have generated updated mixins here, you can propagate them to
- [Prometheus rules repository](https://github.com/giantswarm/prometheus-rules/)
- [Grafana dashboards repository](https://github.com/giantswarm/dashboards/)
