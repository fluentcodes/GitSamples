## [GitSamples](/../../tree/master) - [Oracle Applications](/../../tree/oracle-pl-sql/applications): Docker Image
I wanted to start a local oracle docker image on my mac m1 for the experiments, since there are no 
versions for this combination. 

I didn't succeed on this for my two tries. 

### Using oracle images. 

For local testing of the pl/sql examples one can use docker container. 

    docker login -u fluentcodes -p <password>

Pull image: 

    pull container-registry.oracle.com/database/express:latest

returns:

    latest: Pulling from database/express
    9347a8f0b307: Pull complete
    92de79849cc5: Pull complete
    d3ad8d0938bf: Pull complete
    d5ad62ab629c: Pull complete
    4f4fb700ef54: Pull complete
    a97d1b8f3aa9: Pull complete
    Digest: sha256:20e2eaf39538eada633040e390ee7308a3abc2d6256075adb2e4bb73bf128f1f
    Status: Downloaded newer image for container-registry.oracle.com/database/express:latest
    container-registry.oracle.com/database/express:latest


Start with default

    docker run -d --name oracle container-registry.oracle.com/database/express:21.3.0-xe

A first start works well but I had no clue what is the password. So I stopped the container 

    docker rm $(docker ps -a -q --filter="name=oracle")

And check if its running: 

    docker ps -a                                                                                                                             
    CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES

Start again with parameters:

    docker run --name oracle  -p 1521:1521 -e ORACLE_PWD=test  -e ORACLE_CHARACTERSET=UTF-8 -v /~werner/dev/oradata   container-registry.oracle.com/database/express:21.3.0-xe

After that I run into problems and even the original no parameter version does not work.

I give up at the moment, since I can use some dev oracle installation for this purpose. 

### Using another image
I tried another image on https://hub.docker.com/r/gvenzl/oracle-xe.
I tried another image on https://hub.docker.com/r/gvenzl/oracle-xe.

    docker pull gvenzl/oracle-xe:latest

When starting it

    docker run -d -p 1521:1521 -e ORACLE_PASSWORD=test -v oracle-volume:/opt/oracle/oradata gvenzl/oracle-xe
    
there is a warning.
    WARNING: The requested image's platform (linux/amd64) does not match the detected host platform (linux/arm64/v8) and no specific platform was requested
        725ee66340a92d951d45336913dcc132f7c165dba421a73ae18c71a6ef406160

Even the docker image is started I could not connect to it. 

### Links
* https://apex.oracle.com/pls/apex/germancommunities/dbacommunity/tipp/6241/index.html: Does not work as described. Logged in but "pull access denied for store/oracle/database-enterprise"
* https://stackoverflow.com/questions/47887403/pull-access-denied-for-container-registry-oracle-com-database-enterprise
* https://container-registry.oracle.com/ords/f?p=113:4:12227169395582:::4:P4_REPOSITORY,AI_REPOSITORY,AI_REPOSITORY_NAME,P4_REPOSITORY_NAME,P4_EULA_ID,P4_BUSINESS_AREA_ID:803,803,Oracle%20Database%20Express%20Edition,Oracle%20Database%20Express%20Edition,1,0&cs=3jvJxwOr1jyBDvHElQTmQlVRlo1sKvG5t1Rwm0-F5mYbWyCR1xfbmUBtswWeULRu9vfZF6_ZmpYflZI9qiHij9g
* https://eherrera.net/using-oracle-docker-container/
* https://marschall.github.io/2020/04/12/oracle-docker-container.html
* https://dzone.com/articles/create-an-oracle-database-docker-image
* https://www.dontesta.it/2020/03/15/how-to-setup-docker-container-oracle-database-19c-for-liferay-development-environment/
* https://stackoverflow.com/questions/32073971/stopping-docker-containers-by-image-name-ubuntu
* https://stackoverflow.com/questions/67395995/how-to-install-oracle-database-express-on-mac-m1
* https://hub.docker.com/r/gvenzl/oracle-xe