FROM node:18-bullseye

WORKDIR /app

COPY package*.json ./

RUN npm install hexo-cli -g

COPY . .
RUN hexo init blog
WORKDIR /app/blog

EXPOSE 4000

CMD ["hexo","server"]
