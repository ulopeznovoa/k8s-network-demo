sudo tee /var/lib/rancher/k3s/server/manifests/traefik-gateway-config.yaml > /dev/null <<'EOF'
apiVersion: helm.cattle.io/v1
kind: HelmChartConfig
metadata:
  name: traefik
  namespace: kube-system
spec:
  valuesContent: |-
    providers:
      kubernetesGateway:
        enabled: true
EOF
