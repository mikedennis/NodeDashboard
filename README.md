# FullNode RPC Dashboard
PWA for a Full Node based dashboard using RPC

![Screen Capture](NodeDashboard.png)

Currently supports both Bitcoin and Stratis compatible RPC nodes. This should also include most Bitcoin or Stratis forks (which is a large amount of the coins out there). If the coin is compatible choose which RPC interface it is compatible with and given it a name that you can identify it and it should work.

A current release of the PWA is hosted here https://mikedennis/github.io

*NOTE: Please see the RPC requirement below before attempting to run*

## RPC Requirements
* PWA require HTTPS, the RPC endpoints must also be HTTPS
* PWA is hosted in web broswer, it will require CORS support on the RPC endpoints

Typically neither of these requirements are provided by a FullNode's RPC interface so will most likely require a reverse proxy to handle both HTTPS and CORS requirements.

## Docker based Reverse Proxy
I have included a dockerfile for creating a reverse proxy that handles CORS and runs HTTPS on a self signed development cert.

*Note: Self signed cert will still cause browser warnings so to address properly you would need to create a real cert.*

The docker container when built hosts two web sites on Nginx using the self signed certificate:
* Nginx based CORS reverse proxy to RPC node (HTTPS on port 443)
* Nginx hosted progressive web application (PWA) implementation of a full node dashboard UI (HTTPS on port 444)

### Create self signed cert

```
./create_cert.sh
```

### Build the docker container

```
docker build -t nodedashboard .
```

### Run the docker container

```bash
docker run -it --rm -p 8080:443 -p 8081:444 -e TARGET=http://127.0.0.1:2020
```
TARGET = The fullnode's RPC interface to reverse proxy to

### Hosted Sites
- https://localhost:8080/ Will be the CORS proxy, configure the PWA to send requests to this URL
- https://localhost:8081/ Will be the PWA application, navigate to test
