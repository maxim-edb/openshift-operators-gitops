local edbuser = 'edbuser01';

{
  kind: 'RoleBinding',
  apiVersion: 'rbac.authorization.k8s.io/v1',
  metadata: {
    name: edbuser + '-postgresql-admin',
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
    name: 'clusters.postgresql.k8s.enterprisedb.io-v1-admin',
  },
}
