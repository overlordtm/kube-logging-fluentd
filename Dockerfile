FROM rancher/mirrored-kube-logging-fluentd:v1.16-4.8-full

USER root
RUN fluent-gem install elasticsearch -v '~>7.0' && \
    fluent-gem uninstall -a --force elastic-transport && \
    fluent-gem uninstall --force elasticsearch -v '~>8.0' && \
    fluent-gem uninstall --force elasticsearch-api -v '~>8.0'
USER fluent