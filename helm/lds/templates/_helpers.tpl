{{/* vim: set filetype=mustache: */}}

{{/*
Expand the name of the chart.
*/}}
{{- define "chart.name" -}}
{{- include "common.util.chart.name" . -}}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "chart.fullname" -}}
{{- include "common.util.chart.fullname" . -}}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "chart.chart" -}}
{{- include "common.util.chart.chart" . -}}
{{- end }}


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

{{/*
Common labels
https://intranet.genesys.com/pages/viewpage.action?spaceKey=AZURE&title=MultiCloud+Resource+Tagging+Policy
https://kubernetes.io/docs/concepts/overview/working-with-objects/common-labels/
*/}}
{{- define "chart.labels" -}}
{{- include "common.util.chart.labels" . -}}
{{- end -}}

{{/*
Selector labels
The labels must be immutable. They should not contain the version of the chart.
*/}}
{{- define "chart.selectorLabels" -}}
{{- include "common.util.chart.selectorLabels" . -}}
{{- end }}

{{- define "chart.affinity" -}}
{{- include "common.util.affinity" . -}}
{{- end }}
