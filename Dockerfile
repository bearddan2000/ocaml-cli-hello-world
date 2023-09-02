FROM alpine:edge

WORKDIR /workspace

COPY bin .

RUN apk update \
    && apk add ocaml

ENTRYPOINT ["ocaml"]

CMD ["main.ml"]