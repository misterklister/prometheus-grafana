# prometheus-grafana

Intended for simplicity, and to get started quickly.

## How to run

1. Run `docker-compose up -d`
2. Navigate to http://localhost:3000 to login

The login credentials are username `admin` and password `password`. 

You will be prompted to change these, after the first login.

## Prometheus

### Make changes to and reload scrape targets
Change the contents of `services/prometheus/targets.json` on your host. 

Then run the reload script for it to take effect:
```
sh scripts/prometheus-reload.sh
```