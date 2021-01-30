FROM zollo/ansible:latest

# Copy Files
COPY requirements.txt requirements.yml /

# Configure/Install Python Packages
RUN pip3 install -U pip && \ 
    pip3 install -U wheel setuptools && \
    pip3 install -r /requirements.txt && \
    ansible-galaxy install -r /requirements.yml

ENTRYPOINT [ "/bin/bash" ]