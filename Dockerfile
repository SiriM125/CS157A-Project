FROM alpine:latest

RUN apk --update add sqlite

WORKDIR /app

COPY pixelp.db /app/

VOLUME /app

CMD ["sqlite3", "pixelp.db"]