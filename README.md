# NodeDashboard
Fullnode PWA based dashboard

Docker container hosting:
* Nginx based CORS proxy to RPC node (port 80)
* Nginx hosted progressive web application (PWA) implementation of a full node dashboard UI (port 81)

## Build the Container

```
docker build -t nodedashboard .
```

## Run the Container

### Docker Run

```bash
docker run -it --rm -p 8080:80 -p 8081:81 -e TARGET=http://127.0.0.1:2020
```
TARGET = The fullnode's RPC interface

## Browse
- http://localhost:8080/ Will be the CORS proxy, send RPC requests here 
- http://localhost:8081/ Will be the PWA application, navigate to install