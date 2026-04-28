sed -i '' 's/100/5/g' src/frontend/rpc.go
git add src/frontend/rpc.go
git commit -m "feat: reduce grpc timeout to 1ms"
git push origin main
kubectl rollout restart deployment frontend -n default
echo "Fault injected. Monitoring should detect an SLO breach shortly."
