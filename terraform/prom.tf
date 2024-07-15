# resource "helm_release" "prometheus" {
#   name       = "prometheus"
#   namespace  = "monitoring"
#   chart      = "prometheus"
#   repository = "https://prometheus-community.github.io/helm-charts"
#   #   version    = "2.53.1" # Replace with the desired version

#   #   values = [
#   # file("values.yaml") # Optional: Path to a custom values.yaml file
#   #   ]

#   set {
#     name  = "alertmanager.persistentVolume.enabled"
#     value = "false"
#   }

#   set {
#     name  = "server.persistentVolume.enabled"
#     value = "false"
#   }
# }