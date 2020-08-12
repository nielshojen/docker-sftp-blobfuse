FROM atmoz/sftp:debian

ENV AZURE_MOUNT_POINT="/home"

RUN apt-get update \
    && apt-get install -y wget apt-utils \
    && wget https://packages.microsoft.com/config/debian/10/packages-microsoft-prod.deb \
    && dpkg -i packages-microsoft-prod.deb \
    && apt-get remove -y wget \
    && apt-get update \
    && apt-get install -y --no-install-recommends fuse blobfuse libcurl3-gnutls libgnutls30 \
    && rm -rf /var/lib/apt/lists/*
    
COPY mount-blobfuse.sh /
RUN chmod +x /mount-blobfuse.sh

ENTRYPOINT ["/run.sh"]
