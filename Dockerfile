# syntaxdocker/dockerfile:1

# webbook test 
FROM node:18-alpine
WORKDIR /app
COPY . .
RUN yarn install --production
CMD ["node", "/aap/src/index.js"]
EXPOSE 3000
