local configmapTemplate = import 'template-grafana-configmap.jnt';
local dashboardTemplate = import 'template-grafana-dashboard.jnt';
local datasourceTemplate = import 'template-grafana-datasource.jnt';
local rolebindingTemplate = import 'template-grafana-rolebinding-cluster.jnt';

local generateUserResources(username) = [
  configmapTemplate(username),
  dashboardTemplate(username),
  datasourceTemplate(username),
  roleBindingTemplate(username),
];

[
  userResources
  for userNumber in std.range(1, 15)
  for userResources in generateUserResources('edbuser%02d' % userNumber)
]
