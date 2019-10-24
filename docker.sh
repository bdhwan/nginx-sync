#!/bin/bash
docker build --no-cache --tag bdhwan/nginx-sync:1.02 .
docker push bdhwan/nginx-sync:1.02