{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "pulse-manage-agents.name" -}}
{{- include "common.util.chart.name" . -}}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "pulse-manage-agents.fullname" -}}
{{- include "common.util.chart.fullname" . -}}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "pulse-manage-agents.chart" -}}
{{- include "common.util.chart.chart" . -}}
{{- end }}

{{/*
Common labels
*/}}
{{- define "pulse-manage-agents.labels" -}}
{{- include "common.util.chart.labels" . -}}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "pulse-manage-agents.selectorLabels" -}}
{{- include "common.util.chart.selectorLabels" . -}}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "pulse-manage-agents.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "pulse-manage-agents.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}

{{/*
Alerts labels
*/}}
{{- define "pulse-manage-agents.alertLabels" -}}
service: {{ .Release.Namespace }}
servicename: {{ include "pulse-manage-agents.fullname" . }}
{{- end -}}

{{- define "pulse-manage-agents.affinity" -}}
{{- include "common.util.affinity" . -}}
{{- end }}
