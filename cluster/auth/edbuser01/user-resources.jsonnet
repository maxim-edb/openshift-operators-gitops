local username = 'edbuser01';

local namespaceTemplate = import 'template-namespace.jnt';
local adminRoleBindingTemplate = import 'template-rolebinding-admin.jnt';
local postgresAdminRoleBindingTemplate = import 'template-rolebinding-postgresql-admin.jnt';
local promoteRoleBindingTemplate = import 'template-rolebinding-promote.jnt';

{
  namespace: namespaceTemplate(username),
  adminrb: adminRoleBindingTemplate(username),
  promoterb: promoteRoleBindingTemplate(username),
  postgresadminrb: postgresAdminRoleBindingTemplate(username),
}
