local username = 'edbuser01';

local namespaceTemplate = import '../edbuser-common/template-namespace.jnt';
local adminRoleBindingTemplate = import '../edbuser-common/template-rolebinding-admin.jnt';
local postgresAdminRoleBindingTemplate = import '../edbuser-common/template-rolebinding-postgresql-admin.jnt';
local promoteRoleBindingTemplate = import '../edbuser-common/template-rolebinding-promote.jnt';

[
  namespaceTemplate(username),
  adminRoleBindingTemplate(username),
  promoteRoleBindingTemplate(username),
  postgresAdminRoleBindingTemplate(username),
]
