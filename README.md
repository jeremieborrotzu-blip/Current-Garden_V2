markdown<div align="center">

# OpenClassrooms - Current Garden
</div>

<p align="center">
    <img src="https://img.shields.io/badge/MariaDB-v11.7.2-blue">
    <img src="https://img.shields.io/badge/Symfony-v6.2-blue">
    <img src="https://img.shields.io/badge/Angular-v15.2.0-blue">
    <img src="https://img.shields.io/badge/docker--build-passing-brightgreen">
  <br><br><br>
</p>

# Prerequisites
To start this web application you must have the following tools:
- Docker

# Installation and startup
Clone the project to retrieve it
``` 
git clone https://github.com/OpenClassrooms-Student-Center/Current-Garden-V2.git
cd Current-Garden-V2
```
To start the project
```
docker compose up -d
```


## To shut down the project
Make sure you are in the project folder (where the docker-compose.yml file is located)

```
docker compose down
```

## End of work
If you are not returning to the project, you have the option to delete Docker files and images to reclaim space

Warning: this deletes all Docker projects from your computer

```
docker system prune -a

=> type Y then Enter
```