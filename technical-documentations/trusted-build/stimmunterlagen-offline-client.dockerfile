# node:18.20.3-bullseye
FROM node@sha256:0ffac09d97187af457b5f7f11666796ecdc1360fe3600ef63bb2fa1009b4ab50

ENV \
    # Enable detection of running in a container
    DOTNET_RUNNING_IN_CONTAINER=true \
    # Enable correct mode for dotnet watch (only mode supported in a container)
    DOTNET_USE_POLLING_FILE_WATCHER=true \
    # Skip extraction of XML docs - generally not useful within an image/container - helps performance
    NUGET_XMLDOC_MODE=skip \
    # disable telemtry
    DOTNET_CLI_TELEMETRY_OPTOUT=1 \
    # skip first time
    DOTNET_SKIP_FIRST_TIME_EXPERIENCE=1

ARG DOTNET_VERSION=8.0.201
ARG BIN=/usr/bin
ARG DOTNET_BIN=/usr/share/dotnet
ARG WINE_VERSION=8.0.0.0~bullseye-1

# install utils
RUN apt-get update && \
    apt-get install -y git-lfs=2.13.2-1+b5 && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# install dotnet
RUN curl --fail -L "https://dot.net/v1/dotnet-install.sh" -o ./dotnet-install.sh && \
    chmod +x ./dotnet-install.sh && \
    ./dotnet-install.sh -v "${DOTNET_VERSION}" --install-dir ${DOTNET_BIN} && \
    rm ./dotnet-install.sh && \
    ln -s ${DOTNET_BIN}/dotnet ${BIN}/dotnet

# install wine (to build electron apps for windows)
RUN dpkg --add-architecture i386 && \
    mkdir -pm755 /etc/apt/keyrings && \
    wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key && \
    wget -nc https://dl.winehq.org/wine-builds/debian/dists/bullseye/winehq-bullseye.sources && \
    mv winehq-bullseye.sources /etc/apt/sources.list.d && \
    apt-get update && \
    apt-get install -y --no-install-recommends \
        winehq-stable=${WINE_VERSION} \ 
        wine-stable=${WINE_VERSION} \
        wine-stable-amd64=${WINE_VERSION} \
        wine-stable-i386=${WINE_VERSION} && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# install semantic release
RUN npm i -g \
    semantic-release@19.0.2 \
    @semantic-release/gitlab@6.2.2 \
    @semantic-release/exec@5.0.0

ENTRYPOINT []
