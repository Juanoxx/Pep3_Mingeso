FROM node:10

WORKDIR /usr/Documentos/vue/vueapp

COPY package*.json ./

RUN npm install

EXPOSE 8081

CMD ["npm", "run", "serve"]