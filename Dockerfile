FROM qqshfox/opencv:latest
MAINTAINER Hanfei Shen <qqshfox@gmail.com>

ENV CCV_VERSION unstable
RUN mkdir -p /src && \
    curl -sSL https://github.com/liuliu/ccv/archive/$CCV_VERSION.tar.gz | tar -xzC /src && \
    cd /src/ccv-$CCV_VERSION/lib && \
    ./configure && \
    make
