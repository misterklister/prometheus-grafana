#!/bin/sh

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
ENV_FILE=$SCRIPT_DIR/../.env

if [ -f $ENV_FILE ]
then
  export $(cat $ENV_FILE | sed 's/#.*//g' | xargs)
fi

curl -X POST http://localhost:$PROM_PORT/-/reload‍