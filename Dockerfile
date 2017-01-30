FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.2.1

RUN gem install brighter_planet_metadata --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["brighter_planet_metadata"]
CMD ["--help"]
