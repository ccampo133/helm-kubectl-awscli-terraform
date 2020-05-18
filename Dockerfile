ARG TERRAFORM_VERSION=0.12.25
ARG HELM_KUBECTL_VERSION=latest
FROM hashicorp/terraform:${TERRAFORM_VERSION}
FROM opmacc/helm-kubectl-awscli:${HELM_KUBECTL_VERSION}
WORKDIR /bin
COPY --from=0 /bin/terraform .
CMD bash
