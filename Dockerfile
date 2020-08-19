# Entirely from:
# https://github.com/arangodb-helper/arangodb-backup-container/blob/master/3.4/Dockerfile
FROM arangodb/arangodb-backup

# Install docker
RUN apk update
RUN apk add docker
# Install docker compose
RUN apk add py-pip python3-dev libffi-dev openssl-dev gcc libc-dev make && \
pip3 install docker-compose

# Install the oada command
RUN ln -s /code/oada-srvc-docker/oada /usr/bin/local/
 
# Reset the default entrypoint
ENTRYPOINT [ ]
CMD [ "crond" "-f" "-d" "8" ]
