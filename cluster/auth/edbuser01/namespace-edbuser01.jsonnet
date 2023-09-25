  local edbuser = "edbuser01";

  {
    apiVersion: 'v1',
    kind: 'Namespace',
    metadata: {
      name: edbuser,
      annotations: {
        'openshift.io/requester': $['metadata']['name'],
      },
    },
  }
