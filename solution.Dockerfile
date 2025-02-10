FROM node:16

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

CMD ["node", "./index.js"]

#package.json
{
  "name": "my-app",
  "version": "1.0.0",
  "main": "index.js",
  "scripts": {
    "start": "node ./index.js"
  },
  "dependencies": {
    "express": "^4.18.2"
  }
}

#index.js
const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
  res.send('Hello from Docker!');
});

app.listen(port, () => {
  console.log(`Server listening on port ${port}`);
});