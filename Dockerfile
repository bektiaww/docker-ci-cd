FROM node:23-alpine
WORKDIR /app
EXPOSE 3000
COPY package.json /app/package.json
COPY package-lock.json /app/package-lock.json
RUN npm ci
COPY index.js /app/index.js
CMD [ "node", "./index.js" ]
