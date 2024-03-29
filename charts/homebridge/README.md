# HomeBridge Helm Chart

## Next steps:
- [ ] Write a nice readme file

## Example
```yaml
apiVersion: argoproj.io/v1alpha1
kind: Application
metadata:
  name: homebridge
  namespace: argocd
spec:
  project: default
  syncPolicy:
    automated:
      selfHeal: true
    syncOptions:
      - CreateNamespace=true
  source:
    chart: homebridge
    repoURL: https://espresso-lab.github.io/helm-charts
    targetRevision: 0.1.4
    helm:
      releaseName: homebridge
      parameters:
        - name: ingress.enabled
          value: "true"
        - name: ingress.hosts[0].host
          value: homebridge.example.com
        - name: ingress.hosts[0].paths[0].path
          value: /
        - name: ingress.hosts[0].paths[0].pathType
          value: Prefix
        - name: ingress.tls[0].secretName
          value: homebridge-cert-tls
        - name: ingress.tls[0].hosts[0]
          value: homebridge.example.com
        - name: ingress.annotations.cert-manager\.io/cluster-issuer
          value: letsencrypt-prod
        - name: ingress.annotations.traefik\.ingress\.kubernetes\.io/router\.tls
          value: "'true'"
  destination:
    namespace: home
    server: "https://kubernetes.default.svc"
```
