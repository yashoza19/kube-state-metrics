FROM registry.access.redhat.com/ubi8/ubi

LABEL name="Kube-state-metrics" \
      vendor="SumoLogic" \
      version="1.9.7" \
      release="1" \
      summary="SumoLogic kube-state-metrics" \
      description="This will ...."

COPY kube-state-metrics /
COPY licenses /licenses

USER nobody

ENTRYPOINT ["/kube-state-metrics", "--port=8080", "--telemetry-port=8081"]

EXPOSE 8080 8081
