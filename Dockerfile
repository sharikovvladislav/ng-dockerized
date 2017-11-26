FROM node:7.8.0

WORKDIR /supa-project

ENV NPM_CONFIG_LOGLEVEL warn

COPY . /supa-project

RUN cd client && npm i && npm run build:prod

RUN npm install -g pm2

RUN cd server && npm i

#
EXPOSE 8000

CMD ["pm2-docker", "ecosystem.json"]
