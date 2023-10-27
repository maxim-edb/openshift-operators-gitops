local kubectlRolebindingTemplate = import 'template-rolebinding-kubectl-task.jnt';

local generateUserResources(username) = [
  kubectlRolebindingTemplate(username),
];

[
  userResources
  for userNumber in std.range(1, 5)
  for userResources in generateUserResources('edbuser%02d' % userNumber)
]
