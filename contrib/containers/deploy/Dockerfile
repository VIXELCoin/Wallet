FROM phusion/baseimage:focal-1.0.0
LABEL maintainer="Vixel Developers <dev@vixel.org>"
LABEL description="Dockerised Vixel, built from Travis"

ARG USER_ID
ARG GROUP_ID

ENV HOME /home/vixel

# add user with specified (or default) user/group ids
ENV USER_ID ${USER_ID:-1000}
ENV GROUP_ID ${GROUP_ID:-1000}
RUN groupadd -g ${GROUP_ID} vixel && \
    useradd -u ${USER_ID} -g vixel -s /bin/bash -m -d /home/vixel vixel && \
    mkdir /home/vixel/.vixel && \
    chown ${USER_ID}:${GROUP_ID} -R /home/vixel

COPY bin/* /usr/local/bin/

RUN chmod a+x /usr/local/bin/*

USER vixel

VOLUME ["/home/vixel"]

EXPOSE 16821 9999 26821 26822

WORKDIR /home/vixel
