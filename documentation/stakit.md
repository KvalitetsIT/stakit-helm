# stakit

![Version: 0.0.1](https://img.shields.io/badge/Version-0.0.1-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 0.0.1](https://img.shields.io/badge/AppVersion-0.0.1-informational?style=flat-square)

A helm chart for deploying Stakit frontend and backend in Kubernetes.

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| backend.affinity | object | `{}` |  |
| backend.autoscaling.enabled | bool | `false` |  |
| backend.autoscaling.maxReplicas | int | `100` |  |
| backend.autoscaling.minReplicas | int | `1` |  |
| backend.autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| backend.deployment.env.ADAPTER_API_KEY.value | string | `nil` |  |
| backend.deployment.env.ALLOWED_ORIGINS | object | `{"value":null}` | Comma seperated list of origins. Usually set to the same host as your ingress host. |
| backend.deployment.env.BASE_URL.value | string | `nil` |  |
| backend.deployment.env.CHECK_MESSAGES_FREQUENCY.value | string | `"PT5M"` |  |
| backend.deployment.env.JDBC_PASS.value | string | `nil` |  |
| backend.deployment.env.JDBC_URL.value | string | `nil` |  |
| backend.deployment.env.JDBC_USER.value | string | `nil` |  |
| backend.deployment.env.JWT_SIGNING_KEY.value | string | `nil` |  |
| backend.deployment.env.MAIL_FROM.value | string | `nil` |  |
| backend.deployment.env.MAIL_HOST.value | string | `nil` |  |
| backend.deployment.env.MAIL_PASSWORD.value | string | `nil` |  |
| backend.deployment.env.MAIL_PORT.value | int | `587` |  |
| backend.deployment.env.MAIL_USER.value | string | `nil` |  |
| backend.deployment.env.STATUS_UPDATE_BODY_TEMPLATE.value | string | `nil` |  |
| backend.deployment.env.STATUS_UPDATE_SUBJECT_TEMPLATE.value | string | `nil` |  |
| backend.image.pullPolicy | string | `"IfNotPresent"` |  |
| backend.image.repository | string | `"kvalitetsit/stakit-backend"` |  |
| backend.image.tag | string | `"0.2.1"` | Overrides the image tag whose default is the chart appVersion. |
| backend.ingress.annotations | object | `{}` |  |
| backend.ingress.className | string | `""` |  |
| backend.ingress.enabled | bool | `false` |  |
| backend.ingress.hosts[0].host | string | `"chart-example.local"` |  |
| backend.ingress.hosts[0].paths[0].path | string | `"/"` |  |
| backend.ingress.hosts[0].paths[0].pathType | string | `"ImplementationSpecific"` |  |
| backend.ingress.tls | list | `[]` |  |
| backend.nodeSelector | object | `{}` |  |
| backend.podAnnotations | object | `{}` |  |
| backend.podSecurityContext | object | `{}` |  |
| backend.replicaCount | int | `2` |  |
| backend.resources | object | `{}` |  |
| backend.securityContext.allowPrivilegeEscalation | bool | `false` |  |
| backend.securityContext.capabilities.drop[0] | string | `"ALL"` |  |
| backend.securityContext.readOnlyRootFilesystem | bool | `true` |  |
| backend.securityContext.runAsGroup | int | `11000` |  |
| backend.securityContext.runAsNonRoot | bool | `true` |  |
| backend.securityContext.runAsUser | int | `11000` |  |
| backend.securityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| backend.service.port | int | `8080` |  |
| backend.service.type | string | `"ClusterIP"` |  |
| backend.tolerations | list | `[]` |  |
| frontend.affinity | object | `{}` |  |
| frontend.autoscaling.enabled | bool | `false` |  |
| frontend.autoscaling.maxReplicas | int | `100` |  |
| frontend.autoscaling.minReplicas | int | `1` |  |
| frontend.autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| frontend.deployment.env.REACT_APP_API_BASEURL.value | string | `"/api/v1/"` | API base url |
| frontend.deployment.env.REACT_APP_INACTIVITY_MAX_MINUTES.value | string | `"30"` | Max inactivity |
| frontend.deployment.env.REACT_APP_KEYCLOAK_CLIENTID.value | string | `nil` | Keycloak client id.  |
| frontend.deployment.env.REACT_APP_KEYCLOAK_REALM.value | string | `nil` | Keycloak realm.  |
| frontend.deployment.env.REACT_APP_KEYCLOAK_URL.value | string | `nil` | Keycloak endpoint.  |
| frontend.image.pullPolicy | string | `"IfNotPresent"` |  |
| frontend.image.repository | string | `"kvalitetsit/stakit-frontend"` |  |
| frontend.image.tag | string | `"0.2.1"` | Overrides the image tag whose default is the chart appVersion. |
| frontend.ingress.annotations | object | `{}` |  |
| frontend.ingress.className | string | `""` |  |
| frontend.ingress.enabled | bool | `false` |  |
| frontend.ingress.hosts[0].host | string | `"chart-example.local"` |  |
| frontend.ingress.hosts[0].paths[0].path | string | `"/"` |  |
| frontend.ingress.hosts[0].paths[0].pathType | string | `"ImplementationSpecific"` |  |
| frontend.ingress.tls | list | `[]` |  |
| frontend.nodeSelector | object | `{}` |  |
| frontend.podAnnotations | object | `{}` |  |
| frontend.podSecurityContext | object | `{}` |  |
| frontend.replicaCount | int | `2` |  |
| frontend.resources | object | `{}` |  |
| frontend.securityContext.allowPrivilegeEscalation | bool | `false` |  |
| frontend.securityContext.capabilities.add[0] | string | `"CAP_CHOWN"` |  |
| frontend.securityContext.capabilities.add[1] | string | `"CAP_SETGID"` |  |
| frontend.securityContext.capabilities.add[2] | string | `"CAP_SETUID"` |  |
| frontend.securityContext.capabilities.drop[0] | string | `"ALL"` |  |
| frontend.securityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| frontend.service.port | int | `80` |  |
| frontend.service.type | string | `"ClusterIP"` |  |
| frontend.tolerations | list | `[]` |  |
| fullnameOverride | string | `""` |  |
| imagePullSecrets | list | `[]` |  |
| nameOverride | string | `""` |  |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.name | string | `""` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.0](https://github.com/norwoodj/helm-docs/releases/v1.11.0)
