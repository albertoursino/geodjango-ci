# GeoDjango CI image

Reusable Linux x86_64 base image for GeoDjango tests, with Ubuntu 24.04, GDAL 3.8.4, GEOS 3.12.1, Git, CA certificates, and timezone data. Image builds reject unexpected GDAL or GEOS versions.

Python, a package manager, project dependencies, and a database must be provided separately.

Pull the image:

```bash
docker pull ghcr.io/albertoursino/geodjango-ci:ubuntu24.04
```

Build locally from this directory:

```bash
docker build --tag geodjango-ci:local .
```
