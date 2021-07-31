# prometheus-grafana

## Run

1. Run `docker-compose up -d`
2. Navigate to http://localhost:3000 to login

The login credentials are username `admin` and password `password`. You will be prompted to change it after the first login.

## Prometheus

### Make changes to and reload scrape targets
Change the contents of `services/prometheus/targets.json` on your host. 

Then run the reload script:
```
sh scripts/prometheus-reload.sh
```

For it to take effect.