## Docker container for apt-cacher-ng

## Installation

Build the Docker image with :

    root# make

Then start the container with :

    root# docker run -d -p 3142 -v /data/apt-cache:/var/cache/apt-cacher-ng ${USER}/apt-cacher-ng:latest

## Configuration

You can configure apt-cacher-ng by editing the `acng.conf` file. You'll have to rebuild the image after each modification.

Otherwise you can mount the file as volume.

## Copyrights & License

docker-apt-cacher-ng is completely free and open source and released under the [MIT License](https://github.com/jbox-web/docker-apt-cacher-ng/blob/master/LICENSE).

Copyright (c) 2015 Nicolas Rodriguez (nrodriguez@jbox-web.com), JBox Web (http://www.jbox-web.com)
