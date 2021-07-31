#!/bin/sh

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
ENV_FILE=$(realpath $SCRIPT_DIR/../.env)

if [ -f $ENV_FILE ]
then
  export $(cat $ENV_FILE | sed 's/#.*//g' | xargs)
  curl -X POST http://localhost:$PROM_PORT/-/reload‍
else 
  echo "${ENV_FILE} not found!"
fi