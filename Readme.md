### LAMP Development in Docker

**Development ready LAMP docker setup**

![Docker](https://github.com/jinopl/jinopl.lamp/workflows/Docker/badge.svg)

 - Clone this project and put project files in src folder.
 - For first time Run `make firstrun`
 - For running project afterwards `make run`
 - There is option for setting custom names for docker images using env , if you set custom names, please make sure call each command with env variables.
 - For setting custom names for docker images `make build -e tag=hulk.lamp version=v1`
- For running custom named docker containers `make run -e tag=hulk.lamp version=v1`
- For cleaning docker image and volume `make clean`

