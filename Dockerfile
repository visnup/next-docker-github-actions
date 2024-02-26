FROM node:20.11.1-alpine3.19

RUN mkdir /app
WORKDIR /app

RUN apk add --no-cache bash

RUN --mount=type=bind,source=package.json,target=package.json \
    --mount=type=bind,source=yarn.lock,target=yarn.lock \
    --mount=type=cache,target=/usr/local/share/.cache/yarn \
    yarn --frozen-lockfile

COPY . .

CMD yarn dev
