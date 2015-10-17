# Google Markers

```sh
curl -o GeoLiteCity.dat.gz http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz
gunzip GeoLiteCity.dat.gz
```

```sh
bundle
thin start
```

```sh
ruby publish.rb
```
