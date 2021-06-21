FROM python:3.7.10-stretch

RUN pip3 install pip --upgrade
RUN pip3 install ansible

RUN apt-get update -y && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    sshpass

WORKDIR /workdir

RUN useradd -ms /bin/bash gh05t

CMD tail -f /dev/null