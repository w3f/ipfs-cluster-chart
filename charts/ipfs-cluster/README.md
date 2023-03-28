# ipfs-cluster

IPFS Cluster Chart

![Version: 0.0.20](https://img.shields.io/badge/Version-0.0.20-informational?style=flat-square)

## Installing the Chart

### Add repository

```
helm repo add paradeum-team https://paradeum-team.github.io/helm-charts/
```

### Install chart

```
helm install my-ipfs-cluster paradeum-team/ipfs-cluster --version 0.0.20
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| bootstrapPeerId | string | `"12D3KooWNYut1XL31b4KUnCZmC8Mu7WqGn6QdwnptGpS5tnhSttR"` |  |
| bootstrapPeerPrivateKey | string | `"CAESQKyMCUbsfSRq8NBOFQOxv9uvgXm1zvSHyThj3AQV6UBHvTJ+TbTrk1Z6639aE6FOSMGbAG+besQOtk5SPsP2Gxo="` |  |
| clusterCRDTtrustedPeers | string | `"12D3KooWNYut1XL31b4KUnCZmC8Mu7WqGn6QdwnptGpS5tnhSttR,12D3KooWNYut1XL31b4KUnCZmC8Mu7WqGn6QdwnptGpS5tnhSttR"` |  |
| clusterMonitorPingInterval | string | `"2s"` |  |
| clusterReplicationFactorMax | int | `-1` |  |
| clusterReplicationFactorMin | int | `-1` |  |
| clusterRestApiBasicAuth | string | `"pld:password"` |  |
| clusterRestApiId | string | `"12D3KooWMfXzp2nmNrb7DM4PETYZbaKALnrnwiqnhvrUC66KyYrb"` |  |
| clusterRestApiPrivateKey | string | `"CAESQEmvGJbMboEibpcWCTKOtDYU2eEyyHLN9gDdJli6Z2tksAkhFWNx0Fk3vOlwLIitE2rfGtIj61Ovla/mHC42Plg="` |  |
| clusterSecret | string | `"1ec8276f98cf47c16acfd9bf39fca38f8e3cfcbe229530a7ba9f08ef9757c439"` |  |
| imagePullSecrets | list | `[]` |  |
| ingress.className | string | `"nginx"` |  |
| ingress.clusterApi.enabled | bool | `false` |  |
| ingress.clusterApi.host | string | `"ipfs-cluster-api.pld.community"` |  |
| ingress.clusterApi.proxyBodySize | string | `"1024M"` |  |
| ingress.clusterApi.secretName | string | `"pld-community-tls"` |  |
| ingress.gateway.enabled | bool | `false` |  |
| ingress.gateway.host | string | `"ipfs-gateway.pld.community"` |  |
| ingress.gateway.secretName | string | `"pld-community-tls"` |  |
| ipfs.datastoreStorageMax | string | `"100GB"` |  |
| ipfsClusterImage.repo | string | `"ipfs/ipfs-cluster"` |  |
| ipfsClusterImage.tag | string | `"1.0.6"` |  |
| ipfsImage.repo | string | `"ipfs/go-ipfs"` |  |
| ipfsImage.tag | string | `"v0.13.1"` |  |
| monitor.alert.pinsPinErrorThreshold | int | `10` |  |
| monitor.alert.pinsPinQueuedThreshold | int | `10` |  |
| monitor.alert.pinsPinningThreshold | int | `10` |  |
| monitor.app | string | `"kube-prometheus-stack"` |  |
| monitor.enabled | bool | `false` |  |
| monitor.release | string | `"prometheus-community"` |  |
| nodeSelector | object | `{}` |  |
| persistence.clusterStorage | string | `"5Gi"` |  |
| persistence.enabled | bool | `true` |  |
| persistence.ipfsStorage | string | `"200Gi"` |  |
| replicaCount | int | `1` |  |
| serviceExternalIPs | list | `[]` |  |
| tolerations | list | `[]` |  |
| tracing.enabled | bool | `false` |  |
| tracing.jaegerAgentEndpoint | string | `""` |  |
| tracing.samplingProb | string | `"0.3"` |  |
