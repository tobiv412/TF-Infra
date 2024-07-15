resource "helm_release" "gateway" {
    name = "gateway"

    repository = "https://istio-release.storage.googleapis.com/charts"
    chart = "gateway"
    namespace = "istio-ingress"
    create_namespace = true
    # version = "1.22.2"

    depends_on = [ helm_release.istio_base, helm_release.istiod ]
}