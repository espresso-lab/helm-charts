# DDNS-Route53 Helm Chart

## Example

```yaml
apiVersion: argoproj.io/v1alpha1
kind: Application
metadata:
  name: ddns-route53
  namespace: argocd
spec:
  project: default
  syncPolicy:
    automated:
      selfHeal: true
    syncOptions:
      - CreateNamespace=true
  source:
    chart: ddns-route53
    repoURL: https://espresso-lab.github.io/helm-charts
    targetRevision: 0.1.1
    helm:
      releaseName: ddns-route53
      parameters:
        - name: ddns.schedule
          value: "*/15 * * * *"
        - name: ddns.aws.access_key_id
          value: ""
        - name: ddns.aws.access_key_id
          value: ""
        - name: ddns.aws.route53.hosted_zone_id
          value: "ABCDE"
        - name: ddns.aws.route53.name
          value: "demo.example.com."
        - name: ddns.aws.route53.type
          value: "A"
        - name: ddns.aws.route53.ttl
          value: "300"
  destination:
    namespace: networking
    server: "https://kubernetes.default.svc"
```
