#!/bin/bash

flutter build web

git checkout gh-pages

sh replace.sh

git add .

git commit -m "🚀 Publish to GitHub Pages"

git push

git checkout master
