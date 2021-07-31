# prometheus-grafana

Intended for simplicity, and to get started quickly.

## How to run

1. Run `docker-compose up -d`
2. Open the [Grafana WebUI](http://localhost:3000) to login

The login credentials are username `admin` and password `admin`. 

You will be prompted to change these, after the first login.

## Prometheus

### Scrape targets

#### Making changes
Change the contents of `services/prometheus/targets.json` on your host. 

#### Applying changes

Run the reload script for changes to take effect:
```
sh scripts/prometheus-reload.sh
```


## Grafana

### Preconfigured datasources

The Prometheus service is preconfigured as a Grafana datasource.

### Grafana data folder

The data is stored and accessible in `data/grafana` on your host.