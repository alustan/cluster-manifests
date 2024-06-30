
# Cluster manifests

> - **Cluster addons/controller-manifests with relevant configurations using argocd applicationset**

> - **Manifests used by app-controller to abstract deployment complexities**

- Metadata needed by manifests are retrieved automatically from applicationset cluster secret bootstrapped via terraform

## List of controller manifests

 - **Argocd**

 > Enabled and configured argocd ingress to share ALB with other applications using ALB group

 > Enabled service monitor for prometheus

 > Increased (Queries Per Second) rate limit in Argo CD 

 > Enabled horizontal pod autoscaling

 > Enabled argocd UI access via loadbalancer 

 > Configured argocd RBAC

 > Configured to access ECR OCI registries

 > Configured health check for `alustan.io/*` custom resources

 > Created default argocd AppProject

 - **Argo rollouts**

 > Configured to query cloudwatch for http request target

 > Enabled service monitor for prometheus

 - **Cloudwatch metrics**

 > Configured serviceAccount; extracting role-arn from eks blueprint addons

 - **EBS CSI**

 > GP3 enabled

 - **External DNS**

 > Configured serviceAccount; extracting role-arn from eks blueprint addons

 > Policy: upsert-only

 > Enabled service monitor for prometheus

 - **External secret**

 > Configured serviceAccount; extracting role-arn from eks blueprint addons

 > Enabled service monitor for prometheus

 - **Grafana**

 > Enabled service monitor for prometheus

 > Datasources: `prometheus` and `loki`

 > kubernetes dashboards: `gnetId: 10000`

 > Exposed via Ingress

 > EBS persistence storage

 - **Karpenter**

 > Configured serviceAccount; extracting role-arn from eks blueprint addons

 > Enabled service monitor for prometheus

 > Karpenter provisioner

 - **Kube cost**

 > Dashboard exposed via Ingress

 - **Metrics-server**

 - **Prometheus**

 > Enabled application service monitor 

 > Dashboard exposed via Ingress

 > Enabled EBS storage

 - **Kyverno**

 > Enabled service monitor for prometheus

 > Kyverno policies

 - **ALB controller**

 > configured serviceAccount; extracting role-arn from eks blueprint addons

 > Enabled service monitor for prometheus

 > Ignored diferences for `aws-load-balancer-tls` `MutatingWebhookConfiguration` and `ValidatingWebhookConfiguration`

 - **Loki stack**

 - **Robusta**

 > Enabled prometheus stack

 > Enabled argoRollouts

 > Slack integration

## List of manifests used by app-controller

 - **Argo Rollout**

 > RollbackWindow revisions: 3

 > Strategy: canary

 > Pingpong and AntiAffinity implementation: Zero-Downtime with ALB IP target group

 > Analysis: cloudwatch

 - **Argo AnalysisTemplate**

 > Error count: result[0] >= 0.05

 > provider: cloudwatch

 > AWS/ApplicationELB Metrics: rate of HTTPCode_Target_5XX_Count/RequestCountPerTarget

 - **ConfigMap**

 - **Deployment**

 > Secrets pulled from ExternalSecret

 - **ExternalName service**

 > Expose DNS access to postgres DB

 - **Horizontal Pod Autoscaler**

 - **Ingress**

 > configured for both default rolling update and canary deployment

 - **Namespace**
  
 > elbv2.k8s.aws/pod-readiness-gate-inject: enabled annotations for ip target zero downtime

 - **ClusterSecretStore and ExternalSecret**

 > pulls secret from external secret operator

 - **Service**

 > Deployment Service

 > Rollout Service

 > Prometheus Service with TargetPort: http-metrics


**Alustan:** focuses on building tools and platforms that ensures right implementation of devops principles
