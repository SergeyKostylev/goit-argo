output "argocd_namespace" {
  description = "Namespace where ArgoCD is installed"
  value       = var.argocd_namespace
}

output "argocd_server_service" {
  description = "ArgoCD server service name"
  value       = "argocd-server"
}

output "port_forward_command" {
  description = "Command to access ArgoCD UI"
  value       = "kubectl port-forward svc/argocd-server -n ${var.argocd_namespace} 8080:443"
}

output "get_admin_password" {
  description = "Command to get initial admin password"
  value       = "kubectl get secret argocd-initial-admin-secret -n ${var.argocd_namespace} -o jsonpath='{.data.password}' | base64 -d"
}
