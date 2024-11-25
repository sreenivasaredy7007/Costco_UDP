FROM alpine:latest

# Install Terraform
RUN apk add --no-cache curl unzip bash \
    && curl -fsSL https://releases.hashicorp.com/terraform/1.5.7/terraform_1.5.7_linux_amd64.zip -o terraform.zip \
    && unzip terraform.zip -d /usr/bin \
    && rm terraform.zip \
    && terraform --version

WORKDIR /workspace
