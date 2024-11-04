# kube-logging-fluentd

Custom fluentd image wwith ES7 support

## Usage

https://kube-logging.dev/docs/logging-infrastructure/fluentd/#custom-fluentd-image

```
apiVersion: logging.banzaicloud.io/v1beta1
kind: Logging
metadata:
  name: default-logging-simple
spec:
  fluentd:
    image:
      repository: ghcr.io/overlordtm/kube-logging-fluentd
      tag: v1.16-4.8-full-es7
      pullPolicy: IfNotPresent
    ...
  fluentbit: {}
  controlNamespace: logging
```