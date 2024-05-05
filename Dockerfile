# syntaxdocker/dockerfile:1

# webbook test git checkout
FROM node:18-alpine
WORKDIR /app
COPY . .
RUN yarn install --production
CMD ["node", "src/index.js"]
EXPOSE 3000
