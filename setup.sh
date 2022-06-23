#!/bin/bash -e

docker run -it --rm -v "$PWD/nifi/secrets":/usr/src/secrets \
	-w /usr/src/secrets --user ${UID} openjdk:8-alpine \
	/usr/src/secrets/generate.sh

cat << EOF
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
						Setup is done!
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
To run the stack, first build the image:

	docker-compose -p example_project build --no-cache --force-rm

Bring up the stack:

	docker-compose -p example_project up -d --force-recreate

If everything goes well, you can visit Nifi under this URL:

Happy flowing!


EOF