FROM gcr.io/google.com/cloudsdktool/google-cloud-cli:alpine
RUN apk add curl net-tools bash
RUN curl -L https://raw.githubusercontent.com/warrensbox/terraform-switcher/release/install.sh | bash
