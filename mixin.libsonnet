local kubernetes = import "kubernetes-mixin/mixin.libsonnet";

kubernetes {
  _config+:: {
    kubeStateMetricsSelector: 'app="kube-state-metrics"',
    cadvisorSelector: 'app="cadvisor"',
    nodeExporterSelector: 'app="node-exporter"',
    kubeletSelector: 'app="kubelet"',
  },
}
