#!/bin/bash
set -e

case $1 in
  server) exec perl script/app daemon "$@";;
  test) exec prove -lr t/;;
  *) exec "$@";;
esac
