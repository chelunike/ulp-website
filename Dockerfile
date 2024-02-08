FROM node:lts-alpine as runtime
WORKDIR /app

COPY . /app

RUN npm install
RUN npm run build

ENV HOST=0.0.0.0
ENV PORT=4321

EXPOSE 4321

CMD npm run dev -- --host
#CMD node ./dist/server/entry.mjs