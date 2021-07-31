# prometheus-grafana

Intended for simplicity, and to get started quickly.

## How to run

1. Run `docker-compose up -d`
2. Open the [Grafana WebUI](http://localhost:3000) to login

The login credentials are username `admin` and password `admin`. 

You will be prompted to change these, after the first login.

## Prometheus

### Make changes to and reload scrape targets
Change the contents of `services/prometheus/targets.json` on your host. 

Then run the reload script for it to take effect:
```
sh scripts/prometheus-reload.sh
```

## Grafana

Grafana is already preconfigured to use the Prometheus service as the data source.