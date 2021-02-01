{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "pulse.name" -}}
{{- include "common.util.chart.name" . -}}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "pulse.fullname" -}}
{{- include "common.util.chart.fullname" . -}}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "pulse.chart" -}}
{{- include "common.util.chart.chart" . -}}
{{- end }}

{{/*
Common labels
*/}}
{{- define "pulse.labels" -}}
{{- include "common.util.chart.labels" . -}}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "pulse.selectorLabels" -}}
{{- include "common.util.chart.selectorLabels" . -}}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "pulse.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "pulse.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}

{{/*
Alerts labels
*/}}
{{- define "pulse.alertLabels" -}}
service: {{ .Release.Namespace }}
servicename: {{ include "pulse.fullname" . }}
{{- end -}}

{{- define "pulse.affinity" -}}
{{- include "common.util.affinity" . -}}
{{- end }}
