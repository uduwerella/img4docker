FROM ubuntu
WORKDIR /src
RUN apt-get update -q -y && \
    ln -snf /usr/share/zoneinfo/Etc/UTC /etc/localtime && \
    apt-get install -y python3-pip go-bindata libseccomp-dev uidmap golang runc make git && \
    pip install awscli && \
    git clone https://github.com/genuinetools/img && cd img && make && make install && cp img /usr/local/bin/.
    