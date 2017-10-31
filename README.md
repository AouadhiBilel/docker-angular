## Angular + Docker application seed 
The angular app was generated with Angular CLI version 1.4.9

### Local Development Features
- **One line startup**: Use docker-compose up for single line build and run of local development server
- **Edit code locally while it runs in container**: docker-compose uses proper bind-mounts of host source code into container so you can edit locally while running code in Linux (node) container.

### Assumptions
- You have Docker and Docker-Compose installed
- You want to use Docker for local development
- You want an easy environment setup, usin local editors,local code repo while server runs in a container
- You use `docker-compose` for local development only (docker-compose was never intended to be a production deployment tool anyway).

### Getting Started
To start local development you would run `docker-compose up`, it would:
- Build custom local image enabled for development
- Start container from that image with port 4200 open (on localhost)
- Mounts the pwd to the app directory (/usr/src/app) in container
- **Be sure to use `docker-compose down` to clean up after you're done dev'ing**  



