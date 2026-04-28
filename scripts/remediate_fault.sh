git revert --no-edit HEAD
git push origin main
kubectl rollout restart deployment frontend -n default
echo "Fault reverted. System should recover."
