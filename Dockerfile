FROM node:18-alpine

WORKDIR /app

COPY package*.json ./
RUN npm ci --omit=dev

COPY server.js ./
COPY index.html ./
COPY TchaAgro.html ./
COPY Guide_Visuel_TchaAgro.html ./
COPY Guide_TchaAgro_FR.md ./

ENV NODE_ENV=production
ENV PORT=3000

EXPOSE 3000

USER node

CMD ["node", "server.js"]
