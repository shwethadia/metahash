FROM node:12

WORKDIR /LedgerMailServer

COPY ledgermail-server/package.json .

RUN npm install

COPY ./ledgermail-server  .

EXPOSE 8080

CMD ["npm", "start"]