# dc-py3mongo-dev

docker-compose containers python3 and mongodb for testing purposes



### Prerequisites 

 - sudo rights
 - make installed



## Make commands
 

```
make setup
```
installs packages docker.io docker-compose python3-dev python3-venv


```
make localEnv
```
creates python .env and installs modules in .env listed in requirements.txt


```
make buildImage
```
creates docker image based on Dockerfile


```
make run
```
create and start containers based on Dockerfile and docker-compose file 

```
make destroy
```
stop and destroy containers