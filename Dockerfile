FROM ubuntu:latest

# Install system dependencies.
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -y update
RUN apt-get -y install cmake wget build-essential m4 git

WORKDIR /OPRF-PSI

# Build library.
COPY PSI /OPRF-PSI/PSI/
COPY PSI_test /OPRF-PSI/PSI_test/
COPY CMakeLists.txt /OPRF-PSI/
COPY compile /OPRF-PSI/
RUN bash compile