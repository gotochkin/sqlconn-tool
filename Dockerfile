FROM ubuntu:rolling
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=America/Toronto
RUN apt-get update && \
    apt-get install -y mycli pgcli iredis && \
    ln -s /usr/bin/python3 /usr/bin/python && \
    apt-get install -y curl python3-distutils && \
    curl https://bootstrap.pypa.io/get-pip.py | python3 && \
#    apt-get install -y python3-pip && \
    pip install mssql-cli && \
    echo 'alias ll="ls -l"' >> ~/.bashrc
ENV DOTNET_SYSTEM_GLOBALIZATION_INVARIANT=1
CMD ["/bin/bash"]
