
#### Dockerfile

Below is a user-friendly version of the script to build a Docker image. This script creates a Docker image with the following components:

```FROM - instruction:```

The base image is "gcr.io/google.com/cloudsdktool/google-cloud-cli:alpine" which includes the gcloud CLI based on Alpine/Linux.


```RUN - instructions:```

which includes the gcloud CLI based on Alpine/Linux.
It includes the "net-tools" package, providing useful networking tools for future tasks.

The "tfswitcher" command-line tool is also installed, allowing easy switching between different versions of Terraform.
