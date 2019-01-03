# Latest releases: https://github.com/joeyates/imap-backup/releases

FROM ruby:2.5.3-alpine

MAINTAINER steve@devcloud.guru

RUN gem install imap-backup --no-format-exec

VOLUME ["/root/.imap-backup"]

WORKDIR /tmp

ENTRYPOINT ["imap-backup"]

# Change default to help rather than backup
CMD ["--help"]

