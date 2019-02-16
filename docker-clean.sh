#!/bin/bash

#######################
# Dockerお掃除スクリプト
#######################
echo **** clean docker ****
docker-compose stop
docker-compose rm

echo **** remove files ****
rm -rf ./mysql/lib/*
rm -rf ./phpmyadmin/sessions/*

echo **** start ****
docker-compose up -d