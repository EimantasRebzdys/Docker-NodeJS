FROM node:latest

WORKDIR /app
COPY ./app ./
RUN npm install -g npm@latest && \
npm install --global yarn
RUN yarn install --force

CMD ["npm", "start"]
