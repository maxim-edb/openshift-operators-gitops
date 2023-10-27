# Notes

- On crc, there is no prometheus, so the PodMonitor object doesn't do anything
and the metrics fields will remain empty. Same goes for the Observe -> metrics and
Observe dashboards...




# TODO

## CRB for kubeadmin of CRC

For crc, map kubeadmin to a group of cluster-admins and create CRB; otherwise ArgoCD
seems to not accept kubeadmin as an admin.

```yaml
kind: ClusterRoleBinding
apiVersion: rbac.authorization.k8s.io/v1
metadata:
  name: kubeadmin-is-cluster-admin
subjects:
  - kind: Group
    apiGroup: rbac.authorization.k8s.io
    name: cluster-admins
roleRef:
  apiGroup: rbac.authorization.k8s.io
  kind: ClusterRole
  name: cluster-admin
---
kind: Group
apiVersion: user.openshift.io/v1
metadata:
  name: cluster-admins
users:
  - kubeadmin
```

## 
