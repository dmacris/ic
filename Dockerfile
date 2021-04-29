FROM stain/jena-fuseki

RUN bundle config --global frozen 1

RUN apt-get update -qq \
  && DEBIAN_FRONTEND=noninteractive apt-get install -yq --no-install-recommends \
    build-essential \
    gnupg2 \
    curl \
    less \
    tzdata \
    libpq-dev \
  && apt-get clean \
  && rm -rf /var/cache/apt/archives/* \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN ln -sf /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime
RUN echo 'America/Sao_Paulo' > /etc/timezone && dpkg-reconfigure -f noninteractive tzdata

RUN gem install bundler:2.1.4 puma:4.3.3 rails:6.0.2.2

# Entrypoint configuration
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
ENTRYPOINT [ "entrypoint.sh" ]
CMD [ "/bin/bash" ]

WORKDIR '/app'
