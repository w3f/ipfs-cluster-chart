{{/* Returns the cluster secret name */}}
{{- define "ipfs-cluster.secretName" -}}
{{ .Release.Name }}
{{- end }}

{{/* Returns the configmap env name */}}
{{- define "ipfs-cluster.configmapEnvName" -}}
{{ .Release.Name }}
{{- end }}

{{/* Returns the configmap bootstrap name */}}
{{- define "ipfs-cluster.configmapBootstrapName" -}}
{{ .Release.Name }}
{{- end }}

{{/* Returns the statefulset name */}}
{{- define "ipfs-cluster.statefulsetName" -}}
{{ .Release.Name }}
{{- end }}

{{/* Returns the service name */}}
{{- define "ipfs-cluster.serviceName" -}}
{{ .Release.Name }}
{{- end }}