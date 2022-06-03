local kubernetes = import "kubernetes-mixin/mixin.libsonnet";

kubernetes {
  _config+:: {
    kubeStateMetricsSelector: 'app="kube-state-metrics"',
    cadvisorSelector: 'app="cadvisor"',
    nodeExporterSelector: 'app="node-exporter"',
    kubeletSelector: 'app="kubelet"',
    kubeSchedulerSelector: 'app="kube-scheduler"',
    kubeControllerManagerSelector: 'app="kube-controller-manager"',
    kubeApiserverSelector: 'component="apiserver"',
    kubeProxySelector: 'app="kube-proxy"',
    showMultiCluster: true,
    clusterLabel: 'cluster_id',

    // See https://github.com/kubernetes-monitoring/kubernetes-mixin/blob/43c78a647d6c229ec2d0de54a82c0bc40bc8a9b2/config.libsonnet#L66-L77
    // for the upstream data structure.
    grafanaK8s: {
      dashboardNamePrefix: 'Kubernetes / ',
      linkPrefix: '.',
      minimumTimeInterval: '1m',

      // Adjust tags to use our semantical scheme
      dashboardTags: ['origin:kubernetes-mixin', 'owner:team-ludacris'],

      // Set the default refresh rate to 1m, as the upstream 10s are too short for us.
      refresh: '1m',
    },
  },
}
