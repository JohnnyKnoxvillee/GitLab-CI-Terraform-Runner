FROM gcr.io/google.com/cloudsdktool/google-cloud-cli:alpine
RUN apk add curl net-tools bash
RUN curl -L https://raw.githubusercontent.com/warrensbox/terraform-switcher/release/install.sh | bash
RUN apk add --update --no-cache jq curl
RUN VERSION=$(curl -s "https://api.github.com/repos/google/go-containerregistry/releases/latest" | jq -r '.tag_name') && \
    curl -sL "https://github.com/google/go-containerregistry/releases/download/${VERSION}/go-containerregistry_Linux_x86_64.tar.gz" | tar -xzv -C /usr/local/bin crane
