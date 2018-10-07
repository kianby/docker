FROM kianby/hugo:0.31.1

ENV CONFIG_FILE "config.toml"

# Install pygments (for syntax highlighting)
RUN apk update && apk add bash && rm -rf /var/cache/apk/*

COPY docker-init.sh /usr/local/bin/
RUN chmod +x usr/local/bin/docker-init.sh

# Command
CMD ["docker-init.sh"]

EXPOSE 80