# Use an official Debian image as a base
FROM debian:latest

# Install dependencies
RUN apt-get update && \
    apt-get install -y curl unzip gnupg software-properties-common

# Install Google Cloud SDK
RUN echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] http://packages.cloud.google.com/apt cloud-sdk main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list && \
    curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add - && \
    apt-get update -y && \
    apt-get install -y google-cloud-sdk

# Install Docker CLI
RUN apt-get install -y docker.io

# Install Terraform
RUN curl -fsSL https://apt.releases.hashicorp.com/gpg | gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg && \
    echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | tee /etc/apt/sources.list.d/hashicorp.list && \
    apt-get update && \
    apt-get install -y terraform

# Set environment variable for Google Cloud credentials (if needed)
# You can mount your service account JSON file when running the container
ENV GOOGLE_APPLICATION_CREDENTIALS=/key.json

# Set the entrypoint to bash for running commands interactively
ENTRYPOINT ["/bin/bash"]
