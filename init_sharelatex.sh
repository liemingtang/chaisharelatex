#!/bin/bash 

# 
# using the docker container from 
# https://hub.docker.com/r/tiagoboldt/sharelatex-docker/
# 

# step 1: 
#	make folder /DATA/sharelatex
# step 2: 
# 	start container: docker run -it -p 8081:3000 -v /srv/sharelatex-data:/data tiagoboldt/sharelatex-docker
# step 3: bash into container and create admin user - note: wait till the site is up first.
#	## bash into container command %> docker exec -i -t containername /bin/bash    
#	still iside the containder, create admin user
#	grunt create-admin-user --email=joe@example.com
#	# click the url and set your password
# 	# new users can be registred at http://localhost:3000/admin/register


# this scrip just starts the sharelatex
# step 2 
docker run -d -p 8081:3000 --name sharelatex -v $(pwd):/data tiagoboldt/sharelatex-docker 

