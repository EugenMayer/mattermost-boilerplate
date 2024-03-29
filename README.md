## WAT

- Helps you to quickstart mattermost locally using docker
- uses the official docker-images by mattermost from https://hub.docker.com/r/mattermost/mattermost-team-edition
- It also is the base for the rancher catalog for the production grade hosting, see  https://github.com/EugenMayer/docker-rancher-extra-catalogs

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
 
Check the `docker-compose.yaml` to see how they are used - but in the end, those are the originals ( see `build.sh` )
so just use the official documentation.

See the docker hub projects for the available tags / versions.

### Build custom / dev images

Just run

```bash
./build.sh 5.36.1 myname/mattermost
```

To build your own images which then are tagged lile
 - `myname/mattermost-app:team-5.36.1` - that's the app image

### More

 - https://docs.mattermost.com/administration/config-settings.html
 - https://github.com/mattermost/mattermost-docker

### Credits
All the credits direct to https://mattermost.com
