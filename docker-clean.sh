#!/bin/bash

#######################
# Dockerお掃除スクリプト
#######################
echo **** clean docker ****
docker-compose stop
docker-compose rm -f

echo **** remove files ****
rm -rf ./php/log/*
rm -rf ./mysql/lib/*
rm -rf ./phpmyadmin/sessions/*

echo **** start ****
docker build -t php_study_php ./php
docker-compose up -d