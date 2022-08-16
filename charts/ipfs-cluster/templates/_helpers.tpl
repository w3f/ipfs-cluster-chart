{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "ipfs-cluster.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/* Returns the cluster secret name */}}
{{- define "ipfs-cluster.secretName" -}}
{{ .Release.Name }}
{{- end }}

{{/* Returns the configmap env name */}}
{{- define "ipfs-cluster.configmapEnvName" -}}
{{ .Release.Name }}-env
{{- end }}

{{/* Returns the configmap bootstrap name */}}
{{- define "ipfs-cluster.configmapBootstrapName" -}}
{{ .Release.Name }}-bootstrap
{{- end }}

{{/* Returns the statefulset name */}}
{{- define "ipfs-cluster.statefulsetName" -}}
{{ .Release.Name }}
{{- end }}

{{/* Returns the service name */}}
{{- define "ipfs-cluster.serviceName" -}}
{{ .Release.Name }}
{{- end }}

{{/* Returns the service name http */}}
{{- define "ipfs-cluster.serviceNameHttp" -}}
{{ .Release.Name }}-http
{{- end }}

{{/* Returns the service name local */}}
{{- define "ipfs-cluster.serviceNameLocal" -}}
{{ include "ipfs-cluster.fullname" . }}-local
{{- end }}
