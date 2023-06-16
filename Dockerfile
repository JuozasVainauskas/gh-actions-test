FROM debian:11.7

RUN useradd --uid 10000 runner
USER 10000

WORKDIR /src
COPY --chown=runner:runner ./src/test.sh .
RUN chmod +x ./test.sh

CMD ["/src/test.sh"]
