# prometheus-grafana

# Grafana

## Configure default user

Change these lines in `services/grafana/grafana.ini` accordingly:
```
# default admin user, created on startup
admin_user = admin

# default admin password, can be changed before first start of grafana, or in profile settings
admin_password = admin
```

# Prometheus

## Configure scrape targets

See `services/prometheus/targets.json`

## Hot reload scrape targets
Make changes to `services/prometheus/targets.json` on your host. Then either run:
```
sh scripts/prometheus-reload.sh
```

Or see contents of `scripts/prometheus-reload.sh`, if you changed the default ports.

# Run

1. Run `docker-compose up -d`
2. Navigate to http://localhost:3000 to login