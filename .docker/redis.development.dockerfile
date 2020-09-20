FROM redis:latest
LABEL author="Sravan Chithari"

COPY ./.docker/config/redis.development.conf /etc/redis.conf
EXPOSE 6379

ENTRYPOINT [ "redis-server", "/etc/redis.conf" ]

# To build
# docker build -f redis.development.dockerfile --tag sravan13/redis ../

# To Run
# docker run -d -p 6379:6379 redis sravan13/redis
