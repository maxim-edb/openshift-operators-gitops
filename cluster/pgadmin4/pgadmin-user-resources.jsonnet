local anyuidTemplate = import 'template-anyuid-rolebinding.jnt';
local configmapTemplate = import 'template-configmap.jnt';
local deploymentTemplate = import 'template-deployment.jnt';
local pvcTemplate = import 'template-pvc.jnt';
local routeTemplate = import 'template-route.jnt';
local serviceTemplate = import 'template-service.jnt';

local generateUserResources(username) = [
  configmapTemplate(username),
  anyuidTemplate(username),
  deploymentTemplate(username),
  pvcTemplate(username),
  routeTemplate(username),
  serviceTemplate(username),
];

[
  userResources
  for userNumber in std.range(1, 15)
  for userResources in generateUserResources('edbuser%02d' % userNumber)
]
