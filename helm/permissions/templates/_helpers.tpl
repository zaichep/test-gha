{{/* vim: set filetype=mustache: */}}

{{/*
Expand the name of the chart.
*/}}
{{- define "name" -}}
{{- include "common.util.chart.name" . -}}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "fullname" -}}
{{- include "common.util.chart.fullname" . -}}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "selectorLabels" -}}
{{- include "common.util.chart.selectorLabels" . -}}
{{- end }}

{{/*
Common labels
*/}}
{{- define "labels" -}}
{{- include "common.util.chart.labels" . -}}
{{- end -}}

{{/*
Create an object (service, pod) name.
https://intranet.genesys.com/pages/viewpage.action?spaceKey=AZURE&title=Genesys+Engage+Azure+Naming+Convention
*/}}
{{- define "objectName" -}}
{{- include "common.util.objectName" . }}
{{- end }}

{{/*
Create an application name.
*/}}
{{- define "cfgAppName" -}}
{{- include "common.util.appName" . -}}
{{- end }}

{{- define "affinity" -}}
{{- include "common.util.affinity" . -}}
{{- end }}
