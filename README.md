
**Docker + Nginx + Let's Encrypt + Gogs**

 Derived from https://hub.docker.com/r/jrcs/letsencrypt-nginx-proxy-companion. Added Gogs and simplified
the sites structure - all the sites data is stored in websites dir.

**Pre-reqs:**

- latest docker engine
- latest docker-compose
- make

**Install:**

```
git clone https://github.com/gogits/gogs.git
cd gogs
docker build -t sfinx-gogs:latest .
cd ..
git clone https://github.com/Sfinx/dnleg
cd dnleg
make up
```

**Usage:**

|Command|Description|
|:-|:-|
| make ps |- list running containers |
| make plogs/gogs-logs |- view logs  |
| make proxy-sh/gogs-sh |- launch bash inside the container |
| make up/down |- start/stop service |
