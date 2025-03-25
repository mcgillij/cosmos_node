FROM jrei/systemd-ubuntu:22.04

RUN apt-get update \
  && apt-get install -y \
  python3-pip \
  curl \
  wget \
  jq \
  vim \
  git \
  zstd \
  dbus \
  locales \
  systemd \
  sudo

ENV export PYTHONIOENCODING=utf8
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8
ADD requirements.txt /tmp/
RUN pip3 install --upgrade pip
RUN pip3 install --upgrade -r /tmp/requirements.txt

RUN useradd -m -s /bin/bash -G sudo j

WORKDIR /tmp/ansible

CMD ["/sbin/init"]
