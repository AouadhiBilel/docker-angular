FROM node:6

RUN mkdir -p /usr/src/app

ARG NODE_ENV=production
ENV NODE_ENV $NODE_ENV

ARG PORT=4200
ENV PORT $PORT
EXPOSE $PORT

HEALTHCHECK CMD curl -fs http://localhost:$PORT || exit 1
 
VOLUME /usr/src/app

WORKDIR /usr/src/app
COPY package.json /usr/src/app
RUN npm install && npm cache clean --force
ENV PATH /usr/src/app/node_modules/.bin:$PATH


COPY . /usr/src/app

CMD ["npm", "start"]

