FROM node
RUN ls -la
RUN npm install -g vsce
RUN mkdir /package
COPY . package/
WORKDIR /package
RUN ls -la
RUN vsce package
RUN ls -la
RUN node --version