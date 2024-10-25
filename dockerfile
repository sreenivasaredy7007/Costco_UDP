# Use the official Google Cloud SDK image as a base
FROM google/cloud-sdk:latest

# Set the working directory inside the container
WORKDIR /app

# Copy the SQL script from the host machine to the container
COPY Costco_UDP/scripts/create_table_and_insert.sql ./scripts/create_table_and_insert.sql

# Ensure that bash is available (it's included in the Google Cloud SDK image)
RUN apt-get update && apt-get install -y bash

# Set environment variable for Google Cloud credentials (if needed)
# You can mount your service account JSON file when running the container
ENV GOOGLE_APPLICATION_CREDENTIALS=/key.json

# Default command to run when the container starts
CMD ["bash", "-c", "bq query --use_legacy_sql=false < ./scripts/create_table_and_insert.sql"]
