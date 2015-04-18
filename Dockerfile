FROM dockerfile/ubuntu
RUN \
  apt-add-repository ppa:brightbox/ruby-ng && \
  apt-get update && \
  DEBIAN_FRONTEND=noninteractive apt-get install -y ruby2.2 ruby2.2-dev ruby-bundler git libssl-dev nodejs awscli && \
  rm -rf /var/lib/apt/lists/*

add ./Gemfile ./
RUN bundle install
