{{/*
Expand the name of the chart.
*/}}
{{- define "simple-link-shortener.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "simple-link-shortener.fullname" -}}
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

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "simple-link-shortener.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "simple-link-shortener.labels" -}}
helm.sh/chart: {{ include "simple-link-shortener.chart" . }}
{{ include "simple-link-shortener.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "simple-link-shortener.selectorLabels" -}}
app.kubernetes.io/name: {{ include "simple-link-shortener.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}


{{/*
Forward path
*/}}
{{- define "getFirstForwarderHostAndPath" -}}
{{- $hosts := .Values.ingressForwarder.hosts -}}
{{- $tls := .Values.ingressForwarder.tls -}}
{{- $scheme := "http://" -}}
{{- if gt (len $tls) 0 -}}
  {{- $scheme = "https://" -}}
{{- end -}}
{{- if gt (len $hosts) 0 -}}
  {{- $firstHost := index $hosts 0 -}}
  {{- $host := $firstHost.host -}}
  {{- $paths := $firstHost.paths -}}
  {{- if gt (len $paths) 0 -}}
    {{- $firstPath := index $paths 0 -}}
    {{- printf "%s%s%s" $scheme $host $firstPath.path -}}
  {{- end -}}
{{- end -}}
{{- end -}}
