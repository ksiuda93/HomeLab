FROM python:3.7.10-stretch

ARG USERNAME=gh05t

RUN pip3 install pip --upgrade
RUN pip3 install ansible

RUN apt-get update -y && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    sshpass

WORKDIR /workdir

RUN useradd -ms /bin/bash $USERNAME

CMD tail -f /dev/null