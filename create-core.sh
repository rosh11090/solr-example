#!/bin/bash

set -e

WAIT_SECONDS=400
SOLR_HEAP="12g"

if [[ "$VERBOSE" = "yes" ]]; then
    set -x
fi

if [[ -v SOLR_PORT ]] && ! grep -E -q '^[0-9]+$' <<<"${SOLR_PORT:-}"; then
  SOLR_PORT=8983
  export SOLR_PORT
fi

# when invoked with e.g.: docker run solr -help
if [ "${1:0:1}" = '-' ]; then
    set -- solr-foreground "$@"
fi


/opt/docker-solr/scripts/init-var-solr

/opt/docker-solr/scripts/run-initdb

/opt/docker-solr/scripts/precreate-core product /opt/solr/server/solr/configsets/product-core



SOLR_JAVA_MEM="-Xms5g -Xmx12g"


exec solr start -Dsolr.ltr.enabled=true -f -m 12g
