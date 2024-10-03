FROM python:3.8-alpine

RUN apk add --no-cache gcc g++ musl-dev libffi-dev python3-dev make libev-dev

WORKDIR /app

COPY --chown=root . .

RUN chmod +x /app/run.sh

EXPOSE 7755

ENTRYPOINT [ "/app/run.sh" ]
