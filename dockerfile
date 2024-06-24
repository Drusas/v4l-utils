# For torizon must run this first,
# $ docker run --rm -it --privileged torizon/binfmt

# tag this 192.168.0.100:5000/v4l-utils-dev:torizon-latest

# FROM --platform=linux/arm64/v8 torizon/wayland-base-vivante:2
FROM --platform=linux/arm64/v8 debian
LABEL Description="Torizon v4l-utils dev environment"

SHELL ["/bin/bash", "-c"]

RUN apt-get update && apt-get -y --no-install-recommends install \
libgl1-mesa-dev

RUN apt-get update && apt-get -y --no-install-recommends install \
debhelper \
doxygen \
gcc \
git \
graphviz \
libasound2-dev \
libjpeg-dev \
libqt5opengl5-dev \
libudev-dev \
libx11-dev \
meson \
pkg-config \
qtbase5-dev \
udev \
libsdl2-dev \
libbpf-dev \
llvm \
clang \
# alsa-lib-devel doxygen libjpeg-turbo-devel qt5-qtbase-devel libudev-devel \
# mesa-libGLU-devel \
libjson-c-dev


RUN git config --global user.email "torizon@torizon.com"
RUN git config --global user.name "torizon"

RUN apt-get -y --no-install-recommends install \
rsync 

RUN apt-get -y --no-install-recommends install \
libv4l-dev

# USER torizon
