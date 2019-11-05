FROM asciidoctor/docker-asciidoctor

WORKDIR /work
VOLUME /work

CMD ["asciidoctor", "-b", "html", "*.adoc"]
