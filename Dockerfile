FROM node:16
WORKDIR /app
COPY . /app
RUN npm ci
RUN npm run build
WORKDIR /app/api
EXPOSE 3333
CMD ["npm", "testnet"]