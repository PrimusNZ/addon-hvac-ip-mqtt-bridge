ARG BUILD_FROM
FROM $BUILD_FROM

# Set shell
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

# Install packages
RUN apt-get update
RUN apt-get install -y golang
RUN apt-get clean -y
RUN rm -rf /var/lib/apt/lists/*

WORKDIR /data

COPY run.sh /
COPY go.mod go.sum ./

RUN go mod download

COPY . .

RUN go build -o bridge

EXPOSE 8080

CMD [ "/run.sh" ]

LABEL org.opencontainers.image.source https://github.com/PrimusNZ/hassio-addons
