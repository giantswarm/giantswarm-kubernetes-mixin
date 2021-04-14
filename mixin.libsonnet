local kubernetes = import "kubernetes-mixin/mixin.libsonnet";

kubernetes {
  _config+:: {
    kubeStateMetricsSelector: 'app="kube-state-metrics"',
    cadvisorSelector: 'app="cadvisor"',
    nodeExporterSelector: 'app="node-exporter"',
    kubeletSelector: 'app="kubelet"',
    kubeSchedulerSelector: 'app="kube-scheduler"',
    kubeControllerManagerSelector: 'app="kube-controller-manager"',
    kubeApiserverSelector: 'app="kube-apiserver"',
    kubeProxySelector: 'app="kube-proxy"',
    showMultiCluster: true,
    clusterLabel: 'cluster_id',
  },
}
