FROM node:14-alpine

MAINTAINER Omar López <darkoware@gmail.com>

ADD . /backend
WORKDIR /backend

ARG NODE_ENV

RUN yarn add global yarn \
&& yarn install \
&& yarn build \
&& yarn cache clean

EXPOSE ${PORT}

CMD ["yarn", "start"]
