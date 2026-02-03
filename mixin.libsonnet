local kubernetes = import 'kubernetes-mixin/mixin.libsonnet';

kubernetes {
  _config+:: {
    kubeStateMetricsSelector: 'app="kube-state-metrics"',
    cadvisorSelector: 'app="cadvisor"',
    nodeExporterSelector: 'app="node-exporter"',
    kubeletSelector: 'app="kubelet"',
    kubeSchedulerSelector: 'app="kube-scheduler"',
    kubeControllerManagerSelector: 'app="kube-controller-manager"',
    kubeApiserverSelector: 'app="kubernetes"',
    kubeProxySelector: 'app="kube-proxy"',
    showMultiCluster: true,
    clusterLabel: 'cluster_id',

    // See https://github.com/kubernetes-monitoring/kubernetes-mixin/blob/43c78a647d6c229ec2d0de54a82c0bc40bc8a9b2/config.libsonnet#L66-L77
    // for the upstream data structure.
    grafanaK8s: {
      dashboardNamePrefix: 'Kubernetes / ',
      linkPrefix: '.',
      minimumTimeInterval: '1m',
      grafanaTimezone: 'UTC',

      // Adjust tags to use our semantical scheme
      dashboardTags: ['origin:kubernetes-mixin', 'owner:team-turtles'],

      // Set the default refresh rate to 1m, as the upstream 10s are too short for us.
      refresh: '1m',
    },
    // Grafana dashboard IDs are necessary for stable links for dashboards
    grafanaDashboardIDs: {
      'apiserver.json': 'k8s-apiserver',
      'cluster-total.json': std.md5('cluster-total.json'),
      'controller-manager.json': std.md5('controller-manager.json'),
      'k8s-resources-cluster.json': std.md5('k8s-resources-cluster.json'),
      'k8s-resources-multicluster.json': std.md5('k8s-resources-multicluster.json'),
      'k8s-resources-namespace.json': std.md5('k8s-resources-namespace.json'),
      'k8s-resources-node.json': std.md5('k8s-resources-node.json'),
      'k8s-resources-pod.json': std.md5('k8s-resources-pod.json'),
      'k8s-resources-windows-cluster.json': std.md5('k8s-resources-windows-cluster.json'),
      'k8s-resources-windows-namespace.json': std.md5('k8s-resources-windows-namespace.json'),
      'k8s-resources-windows-pod.json': std.md5('k8s-resources-windows-pod.json'),
      'k8s-resources-workload.json': std.md5('k8s-resources-workload.json'),
      'k8s-resources-workloads-namespace.json': std.md5('k8s-resources-workloads-namespace.json'),
      'k8s-windows-cluster-rsrc-use.json': std.md5('k8s-windows-cluster-rsrc-use.json'),
      'k8s-windows-node-rsrc-use.json': std.md5('k8s-windows-node-rsrc-use.json'),
      'kubelet.json': std.md5('kubelet.json'),
      'namespace-by-pod.json': std.md5('namespace-by-pod.json'),
      'namespace-by-workload.json': std.md5('namespace-by-workload.json'),
      'persistentvolumesusage.json': std.md5('persistentvolumesusage.json'),
      'pod-total.json': std.md5('pod-total.json'),
      'proxy.json': std.md5('proxy.json'),
      'scheduler.json': std.md5('scheduler.json'),
      'workload-total.json': std.md5('workload-total.json'),
    },
  },
}
