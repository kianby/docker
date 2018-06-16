FROM hugo:0.31.1

ENV CONFIG_FILE "config.toml"

# Install pygments (for syntax highlighting)
RUN apk update && apk add bash && rm -rf /var/cache/apk/*

# Copy files
COPY docker/ /docker

# Command
CMD ["bash", "/docker/scripts/entrypoint.sh"]

EXPOSE 80