{{- define "lookup-test.username" -}}
{{- printf "%s" (randAlphaNum 10) | b64enc -}}
{{- end }}

{{- define "lookup-test.password" -}}
{{- printf "%s" (randAlphaNum 10) | b64enc -}}
{{- end }}