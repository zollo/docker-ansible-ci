FROM centos:7
LABEL maintainer="joe@zollo.net"

RUN yum install -y openssh-clients epel-release \
    && yum update -y \
    && yum install -y python36 python37 python3-pip python-pip

RUN pip install --upgrade pip \
    && pip install tox \
    && pip install ansible-test \
    && pip install libyaml \
    && pip install junit-xml

ENTRYPOINT [ "/usr/bin/ansible-test" ]