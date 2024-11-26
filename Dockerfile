# FROM alpine:latest

# # Install necessary dependencies
# RUN apk add --no-cache bash curl unzip

# # Install Terraform
# RUN curl -fsSL https://releases.hashicorp.com/terraform/1.5.7/terraform_1.5.7_linux_amd64.zip -o terraform.zip \
#     && unzip terraform.zip -d /usr/bin \
#     && rm terraform.zip \
#     && terraform --version

# # Set working directory
# WORKDIR /workspace

# # Set entrypoint to avoid unnecessary assumptions
# ENTRYPOINT ["terraform"]
# CMD ["--help"]

#--------------------------------------------------------------#
FROM alpine:latest

# Install necessary dependencies
RUN apk add --no-cache bash curl unzip

# Install Terraform
RUN curl -fsSL https://releases.hashicorp.com/terraform/1.5.7/terraform_1.5.7_linux_amd64.zip -o terraform.zip \
    && unzip terraform.zip -d /usr/bin \
    && rm terraform.zip

# Copy all files to /workspace
COPY . /workspace
COPY ./composer /workspace/composer

# Set working directory
WORKDIR /workspace

# Default command
ENTRYPOINT ["terraform"]
CMD ["--help"]
