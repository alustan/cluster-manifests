
# Cluster manifests

> **Cluster addons/controller-manifests with relevant configurations using argocd applicationset**

> **Manifests used by app-controller to abstract deployment complexities**

- Metadata needed by manifests are retrieved automatically from applicationset cluster secret 

## List of controller manifests

 - Argocd

 - Argo rollouts

 - Atlas operator

 - Cloudwatch metrics

 - EBS CSI

 - External DNS

 - External secret

 - Grafana

 - Karpenter

 - Kube cost

 - Pod autosacler

 - Prometheus

 - Kyverno

 - ALB controller

 - Loki stack

 - Robusta

## List of manifests used by app-controller

 - Argo Rollout
 
 - Argo AnalysisTemplate

 - AtlasSchema

 - ConfigMap

 - Deployment

 - ExternalName service

 - Ingress

 - Namespace

 - ClusterSecretStore

 - ExternalSecret


**This is one of multiple projects that aims to setup a functional platform for seemless app deployment with less technical overhead**

