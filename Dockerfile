FROM alpine/curl

RUN apk update && apk add bash

WORKDIR /usr/src/app

COPY wait-for-it.sh .

COPY entrypoint.sh .

CMD [ "./entrypoint.sh" ]