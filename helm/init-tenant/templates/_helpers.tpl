{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "init-tenant.name" -}}
{{- include "common.util.chart.name" . -}}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "init-tenant.fullname" -}}
{{- include "common.util.chart.fullname" . -}}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "init-tenant.chart" -}}
{{- include "common.util.chart.chart" . -}}
{{- end }}

{{/*
Common labels
*/}}
{{- define "init-tenant.labels" -}}
{{- include "common.util.chart.labels" . -}}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "init-tenant.selectorLabels" -}}
{{- include "common.util.chart.selectorLabels" . -}}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "init-tenant.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "init-tenant.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}
