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

## Publishing

Changes to the Dockerfile, build context rules, or publishing workflow on `main` publish `ghcr.io/albertoursino/geodjango-ci:ubuntu24.04`. Run **Publish CI image** manually on `main` to rebuild without cached layers for system updates.

After the first publish, set the `geodjango-ci` package visibility to **Public** in GitHub's package settings. The package links to this repository and displays this README.
