# karel1980/rpi-oauth2-proxy

## Building

    ./build.sh

## Running

Copy the example configuration file and update it to match your environment (upstream, client id, secrets, ...)

    docker run -p 4180:4180 -v conf/oauth2_proxy.cfg:conf/oauth2_proxy.cfg
