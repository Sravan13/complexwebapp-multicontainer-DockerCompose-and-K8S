FROM mongo

LABEL author="sravan"

#make sure neccessary pakages are installed , here i required cron to take the back up of mongodb
RUN apt-get update && apt-get install -y cron netcat-traditional netcat-openbsd

COPY ./.docker/mongo_scripts /mongo_scripts

RUN chmod +rx /mongo_scripts/*.sh
RUN touch /.firstrun

EXPOSE 27017

ENTRYPOINT [ "/mongo_scripts/run.sh" ]

# To build:
# docker build -f mongo.dockerfile  --tag sravan13/mongo ../

#  To run the image (add -d if you want it to run in the background)
# docker run -p 27017:27017 --env-file env/mongo.development.env -d --name mongo sravan13/mongo



