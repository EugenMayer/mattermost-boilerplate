## WAT

Helps you to quickstart mattermost locally using docker and also offers prebuild images (original source) for mattermost without you being required to build them yourself


It also is thebase for the rancher catalog for the production grade hosting, see  https://github.com/EugenMayer/docker-rancher-extra-catalogs

### Usage

No need to build any images, just start it

```bash
docker-compose up
```

Now connect to `http://localhost:8000`

### Images

The images are build right based the original repository at `https://github.com/mattermost/mattermost-docker`
and then published under 

 - https://hub.docker.com/r/eugenmayer/mattermost-app ( `eugenmayer/mattermost-app` )
 - https://hub.docker.com/r/eugenmayer/mattermost-db (`eugenmayer/mattermost-db`)
 
Check the `docker-compose.yaml` to see how they are used - but in the end, those are the originals ( see `build.sh` )
so just use the official documentation.

### Build the images yourself

Just run

```bash
./build.sh 5.13.2 myname/mattermost
```

To build your own images which then are tagged lile
 - `myname/mattermost-app:team-5.13.2` - that's the app image
 - `myname/mattermost-db:team-5.13.2` - that's the db image

### More

 - https://docs.mattermost.com/administration/config-settings.html
 - https://github.com/mattermost/mattermost-docker

### Credits
All the credits direct to https://mattermost.com
