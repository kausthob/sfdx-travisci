#!/bin/sh

setup_git() {
  git config --global user.email "kausthob@gmail.com"
  git config --global user.name "kausthob"
}

commit_website_files() {
  git checkout -b master
  git add .
  git commit --message "Travis build: $TRAVIS_BUILD_NUMBER"
}

upload_files() {
  git push -f https://kausthob:${GH_TOKEN}@github.com/kausthob/sfdx-travisci.git HEAD:master
}

setup_git
commit_website_files
upload_files