FROM ubuntu:24.04

LABEL org.opencontainers.image.description="Ubuntu 24.04 CI base with GDAL 3.8.4 and GEOS 3.12.1 for GeoDjango tests."
LABEL org.opencontainers.image.source="https://github.com/albertoursino/geodjango-ci"

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install --yes --no-install-recommends \
        ca-certificates git libgdal-dev libgeos-dev tzdata \
    && rm -rf /var/lib/apt/lists/*

RUN gdal_version="$(gdal-config --version)" \
    && geos_version="$(geos-config --version)" \
    && echo "GDAL: $gdal_version; GEOS: $geos_version" \
    && if [ "$gdal_version" != "3.8.4" ] || [ "$geos_version" != "3.12.1" ]; then \
        echo "Expected GIS versions: GDAL 3.8.4 and GEOS 3.12.1." >&2; \
        exit 1; \
    fi
