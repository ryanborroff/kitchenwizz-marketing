FROM node:22-bookworm-slim

WORKDIR /app

COPY package.json ./
COPY server.js index.html styles.css ./
COPY assets ./assets

ENV NODE_ENV=production
ENV PORT=3000
EXPOSE 3000

CMD ["node", "server.js"]
