FROM zollo/ansible:latest

# Copy Files
COPY req-ci.txt /

# Configure/Install Python Packages
RUN pip3 install -U pip && \ 
    pip3 install -U wheel setuptools && \
    pip3 install -r /req-ci.txt
