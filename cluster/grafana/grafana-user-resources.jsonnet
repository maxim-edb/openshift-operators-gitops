local configmapTemplate = import 'template-grafana-configmap.jnt';
local dashboardTemplate = import 'template-grafana-dashboard.jnt';
local datasourceTemplate = import 'template-grafana-datasource.jnt';
local grafanaInstance = import 'template-grafana-instance.jnt';
local roleBindingTemplate = import 'template-grafana-rolebinding-cluster-monitoring.jnt';
local grafanaRoute = import 'template-grafana-route.jnt';

local generateUserResources(username) = [
  configmapTemplate(username),
  dashboardTemplate(username),
  datasourceTemplate(username),
  roleBindingTemplate(username),
  grafanaInstance(username),
  grafanaRoute(username),
];

[
  userResources
  for userNumber in std.range(1, 15)
  for userResources in generateUserResources('edbuser%02d' % userNumber)
]
