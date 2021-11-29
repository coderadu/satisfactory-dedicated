# satisfactory-dedicated

This is a dockerized version of experimental Satisfactory dedicated server.

## Requirements

- Docker [https://www.docker.com/](https://www.docker.com/)
- Docker Compose (Optional) [https://docs.docker.com/compose/](https://docs.docker.com/compose/)

## Usage

- Docker
  - Run
    `docker run -p 15777:15777/udp -p 15000:15000/udp -p 7777:7777/udp -v pathtoconfigfolder:/server/config -d radugmu/satisfactory-dedicated:experimental`
- Docker Compose
  - Download the docker-compose.yml file from the repository
  - Run `docker-compose up` or `docker compose up`
