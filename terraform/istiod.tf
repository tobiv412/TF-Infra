resource "helm_release" "istiod" {
  name = "istiod-release"

  repository       = "https://istio-release.storage.googleapis.com/charts"
  chart            = "istiod"
  namespace        = "istio-system"
  create_namespace = true
  #   version          = "1.22.2"

  set {
    name  = "telemetry.enabled"
    value = "true"
  }

  set {
    name  = "global.istioNamespace"
    value = "istio-system"
  }

  set {
    name  = "meshConfig.ingressService"
    value = "istio-gateway"
  }

  set {
    name  = "meshConfig.ingressSelector"
    value = "gateway"
  }

  depends_on = [helm_release.istio_base]

}