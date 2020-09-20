FROM node:alpine
LABEL author="Sravan Chithari"

WORKDIR /var/www/codewithsravan
RUN npm install -g pm2@latest
RUN mkdir -p /var/log/pm2

EXPOSE 8080

ENTRYPOINT ["pm2", "start", "server.js","--name","codewithsravan","--log","/var/log/pm2/pm2.log","--watch","--no-daemon"]

# To build
# docker build -f node-codewithsravan.development.dockerfile --tag sravan13/node-codewithsravan ../

#To run:
# docker run -d -p 8080:8080 -v $(PWD):/var/www/codewithsravan -w /var/www/codewithsravan sravan13/node-codewithsravan
# docker run -d -p 8080:8080 --name sravan13/node-codewithsravan sravan13/node-codewithsravan