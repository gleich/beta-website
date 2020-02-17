#!/bin/bash

flutter build web

git checkout gh-pages

sh replace.sh

git add .

git commit -m "Update"

git push

git checkout master