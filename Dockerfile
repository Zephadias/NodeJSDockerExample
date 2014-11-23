FROM ubuntu:14.04
MAINTAINER Ryan Ploetz <ryan.ploetz@gmail.com>
RUN apt-get update
RUN apt-get install -y nodejs npm
COPY ./src /src
RUN cd /src; npm install
EXPOSE 8080
CMD ["nodejs", "/src/index.js"]
