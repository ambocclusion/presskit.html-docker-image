presskit.html is by pixelnest (https://github.com/pixelnest/presskit.html)

## How to use
Create a new folder on your machine, and inside that folder create a `docker-compose.yml`, then put this inside:


```
version: "3.8"<br>
services: <br>
  presskit: <br>
    image: ambocclusion/presskit.html <br>
    ports: <br>
      - "8080:8080" <br>
    volumes: <br>
      - /path/on/host:/home/node/presskit/site <br>
```

if you like command line better, run this in a terminal: `docker run -it -d -p 8080:8080 --rm ambocclusion/presskit.html:latest -v /location/on/host/machine:/home/node/presskit/site`

If the location on host machine is empty, it'll create a new data setup to start using presskit right away!