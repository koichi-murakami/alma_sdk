#
# Dockerfile for CentOS 8 instance
#
FROM almalinux:8.4
LABEL maintener="Koichi Murakami <koichi.murakami@kek.jp>"

#
RUN dnf update -y

#
RUN dnf install -y epel-release tcsh zsh sudo make gcc-c++ \
                   boost-devel expat-devel && \
    dnf install -y git cmake xerces-c-devel

#
RUN rm -rf /var/cache/dnf/* && \
    dnf clean all

#
WORKDIR /
