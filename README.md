# NodeDashboard
Fullnode PWA based dashboard

Docker container hosting:
* Nginx based CORS proxy to RPC node (/proxy)
* Nginx hosted progressive web application (PWA) implementation of a full node dashboard UI

## Build the Container

```
docker build -t nodedashboard .
```

## Run the Container

### Docker Run

```bash
docker run -p 8080:80 -e TARGET=http://127.0.0.1:2020 nodedashboard
```
TARGET = The fullnode's RPC interface

## Browse
- /proxy will be the CORS proxy to the RPC node
- /dashboard will be the full node dashboard UI PWA