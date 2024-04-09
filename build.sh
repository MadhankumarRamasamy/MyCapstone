#!/bin/bash
docker build -t myreactapp .
docker-compose down || true
docker-compose up -d
