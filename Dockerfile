#
# Dockerfile for AlmaLinux instance
#
FROM almalinux:9.1
LABEL maintener="Koichi Murakami <koichi.murakami@kek.jp>"

#
RUN dnf install -y epel-release tcsh zsh sudo make gcc-c++ \
                   boost-devel expat-devel && \
    dnf install -y git cmake xerces-c-devel

#
RUN dnf update -y && \
    rm -rf /var/cache/dnf/* && \
    dnf clean all

#
WORKDIR /
