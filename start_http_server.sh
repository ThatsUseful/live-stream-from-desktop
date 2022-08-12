#!/bin/bash

cd /tmp/

finish()
{
  cd -
}

trap finish EXIT

docker run --rm -v $(pwd):/opt/www -p 8000:8000 webratio/nodejs-http-server:0.9.0 http-server /opt/www -a :: -p 8000 --cors -c-1
