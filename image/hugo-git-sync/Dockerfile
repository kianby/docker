FROM hugo:0.31.1

ENV PERIOD 10
ENV REPO_LINK ""

# Install pygments (for syntax highlighting)
RUN apk update && apk add git && apk add bash && rm -rf /var/cache/apk/*

# Copy files
COPY docker/ /docker

# Command
CMD ["bash", "/docker/scripts/entrypoint.sh"]