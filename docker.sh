#!/bin/bash
docker build --no-cache --tag bdhwan/nginx-sync:1.05 .
docker push bdhwan/nginx-sync:1.05