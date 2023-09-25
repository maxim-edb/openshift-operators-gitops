local edbuser = 'edbuser01';

{
  kind: 'RoleBinding',
  apiVersion: 'rbac.authorization.k8s.io/v1',
  metadata: {
    name: edbuser + '-promote',
    namespace: edbuser,
  },
  subjects: [
    {
      kind: 'User',
      apiGroup: 'rbac.authorization.k8s.io',
      name: edbuser,
    },
  ],
  roleRef: {
    apiGroup: 'rbac.authorization.k8s.io',
    kind: 'ClusterRole',
    name: 'custom-psql-switchover-role',
  },
}
