#!/bin/bash
go mod tidy
go mod vendor
docker build -t lwr20/mocklet . && docker push lwr20/mocklet
