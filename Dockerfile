FROM buildpack-deps:bionic
LABEL maintainer="joe@zollo.net"
COPY build.sh /
RUN bash build.sh && rm /build.sh
RUN apt-get update && \
    apt-get install -y python-pip python-setuptools && \
    rm -rf /var/cache/apt/lists
RUN pip install --upgrade pip \
    && pip install tox \
    && pip install ansible==2.9.9 \
    && pip install ansible-test \
    && pip install junit-xml    