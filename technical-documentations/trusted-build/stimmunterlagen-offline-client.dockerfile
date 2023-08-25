# node:16.13.0-bullseye
FROM node@sha256:7e133f64f31cc14f6668406ad389653cd43710ebddf2579cf79461895169a0f4

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

ARG DOTNET_VERSION=6.0.406
ARG BIN=/usr/bin
ARG DOTNET_BIN=/usr/share/dotnet
ARG WINE_VERSION=8.0.0.0~bullseye-1
ARG OSSLSIGNCODE_VERSION=2.6

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

# download and build osslsigncode
RUN apt-get update && \
    apt-get install -y cmake=3.18.4-2+deb11u1 libssl-dev=1.1.1n-0+deb11u5 libcurl4-openssl-dev=7.74.0-1.3+deb11u7 && \
    mkdir /osslsigncode-tmp && cd /osslsigncode-tmp && \
    wget https://github.com/mtrojnar/osslsigncode/releases/download/${OSSLSIGNCODE_VERSION}/osslsigncode-${OSSLSIGNCODE_VERSION}.tar.gz && \
    tar -xvzf osslsigncode-${OSSLSIGNCODE_VERSION}.tar.gz && \
    cd osslsigncode-${OSSLSIGNCODE_VERSION} && \
    mkdir build && cd build && \
    cmake .. && cmake --build . && \
    mv osslsigncode /usr/bin && \
    rm -rf /osslsigncode-tmp && \
    apt-get remove -y cmake libssl-dev libcurl4-openssl-dev && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# install semantic release
RUN npm i -g \
    semantic-release@19.0.2 \
    @semantic-release/gitlab@6.2.2 \
    @semantic-release/exec@5.0.0

ENTRYPOINT []
