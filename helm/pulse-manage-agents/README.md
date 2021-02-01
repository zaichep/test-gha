# Install pulse-manage-agents Helm Chart
From checkout directory:
helm install --create-namespace -n pulse pulse-manage-agents pulse-manage-agents

Follow by instruction from the NOTES: section to port forward:

kubectl --namespace pulse port-forward $POD_NAME 80:8000

kubectl --namespace pulse port-forward $POD_NAME 9103:7080

Now:
Health check: curl http://127.0.0.1:80/t/api/v3/manage-agents/health

Prometheus metrics: curl http://127.0.0.1:9103/metrics
