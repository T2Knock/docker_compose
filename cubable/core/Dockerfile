FROM node:18

ENV NODE_ENV=development 

COPY . /app

WORKDIR /app

RUN npm ci 

CMD  ["node","--max_old_space_size=2048","./bin/www" ]
