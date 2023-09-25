local username = 'edbuser01';

local namespaceTemplate = import 'template-namespace.json';
local adminRoleBindingTemplate = import 'template-rolebinding-admin.json';
local postgresAdminRoleBindingTemplate = import 'template-rolebinding-postgresql-admin.json';
local promoteRoleBindingTemplate = import 'template-rolebinding-promote.json';

{
  namespace: namespaceTemplate(username),
  adminrb: adminRoleBindingTemplate(username),
  promoterb: promoteRoleBindingTemplate(username),
  postgresadminrb: postgresAdminRoleBindingTemplate(username),
}
