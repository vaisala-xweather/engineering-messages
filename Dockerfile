FROM ubuntu:24.04

RUN apt-get update \
    && apt-get install -y \
    build-essential \
    ruby-full  \
    zlib1g-dev \
    && rm -rf /var/lib/apt/lists/* \
    && apt clean

RUN gem install bundler github-pages

WORKDIR /site
ENTRYPOINT [ "jekyll", "serve" ]
CMD [ "--watch", "--incremental", "--source", "./docs", "--port", "8000", "--host", "0.0.0.0" ]
