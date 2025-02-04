FROM node:16
WORKDIR /app
COPY . /app
RUN npm ci
RUN npm run build
EXPOSE 3333
CMD ["npm", "start"]