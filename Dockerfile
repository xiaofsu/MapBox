FROM node:8.4
WORKDIR /app
ADD . /app
WORKDIR /app/mbview
RUN npm install minimist
RUN npm install
EXPOSE 9000
WORKDIR /app/mbview/config
CMD ./start.sh
