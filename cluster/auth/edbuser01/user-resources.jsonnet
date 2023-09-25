local username = 'edbuser01';

local namespaceTemplate = import 'template-namespace.jnt';
local adminRoleBindingTemplate = import 'template-rolebinding-admin.jnt';
local postgresAdminRoleBindingTemplate = import 'template-rolebinding-postgresql-admin.jnt';
local promoteRoleBindingTemplate = import 'template-rolebinding-promote.jnt';

[
  namespaceTemplate(username),
  adminRoleBindingTemplate(username),
  promoteRoleBindingTemplate(username),
  postgresAdminRoleBindingTemplate(username),
]
