# Topic Branch Docker Mongo
An example how to set up a local MongoDb in a container
## Commands

### Start MongoDb yaml
    sudo docker-compose up -d
The up command will pull the mongo image from the docker registry and create the container using the given parameters in the docker-compose.yml file.
### Docker

#### Check Running Instances
    sudo docker ps -a

#### Remove Instances
    sudo docker rm mongodb

#### Interacting with the Container
    sudo docker exec -it mongodb bash
    mongo
    use food
    db.createCollection("fruits")
    db.fruits.insertMany([ {name: "apple", origin: "usa", price: 5}, {name: "orange", origin: "italy", price: 3}, {name: "mango", origin: "malaysia", price: 3} ])
    db.fruits.find().pretty()
    exit

    mongo
    show databases
    use food
    show collections
    db.fruits.find().pretty()
    exit

### Stop docker-compose
    sudo docker-compose down

    [+] Running 2/1
    ⠿ Container mongodb        Removed                                                                                                                                       0.3s
    ⠿ Network sandbox_default  Removed  

    sudo docker rmi mongodb

### Log Files

    sudo docker logs mongodb

## Links
* https://www.bmc.com/blogs/mongodb-docker
* https://docs.docker.com/engine/reference/commandline/rm/