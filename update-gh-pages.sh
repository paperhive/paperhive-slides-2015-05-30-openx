#!/bin/bash

mkdir -p gh-pages
rm -rf gh-pages/*

FILES="bower_components/angular*/*.min.js\
    bower_components/*/*.min.css\
    bower_components/bootstrap/dist/css/bootstrap.min.css\
    bower_components/fontawesome/css/font-awesome.min.css\
    bower_components/fontawesome/fonts/*
    index.*\
    img/*"

cp --parent $FILES gh-pages/

(cd gh-pages && git add . && git commit -a && git push)
