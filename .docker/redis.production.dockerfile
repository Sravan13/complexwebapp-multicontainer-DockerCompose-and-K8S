FROM 		redis:latest

LABEL       author="Sravan Chithari"

COPY        ./.docker/config/redis.production.conf /etc/redis.conf

EXPOSE      6379

ENTRYPOINT  ["redis-server", "/etc/redis.conf"]

# To build:
# docker build -f redis.production.dockerfile --tag sravan13/redis ../

# To run:
# docker run -d -p 6379:6379 --name redis sravan13/redis