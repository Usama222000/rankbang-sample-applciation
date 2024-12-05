# Configuration Of Values.yaml file

- Change appropriate value for every attribute
- the tls-secret that contains ssl certificat (__tlsSecretName:__ attribute) must be created before in the same namespace of the app
- You need to create a pvc in same namespace with the following content:

```
apiVersion: v1
kind: PersistentVolumeClaim
metadata:
  name: hellobibleapi-pvc
  labels:
    app: hellobible
spec:
  accessModes:
    - ReadWriteOnce
  resources:
    requests:
      storage: 20Gi
  storageClassName: gp2
```

__Values.yaml__

```
envSecretName: hellobibleapi
replicaCount: 1
image:
  repository: 905418367633.dkr.ecr.eu-west-3.amazonaws.com/eu-prod_hellobible_api
Ingress:
  hostDns: preprod.hellobible.ai
  Path: /
  serviceName: hellobibleapi
  servicePort: 3000
  tlsSecretName: preprod-hellobible-tls-api
```
