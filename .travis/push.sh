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
  git remote add origin-pages https://1361759e97b7552ccd7bb2b824a7c35ac532e4e8@github.com/kausthob/sfdx-travisci.git > /dev/null 2>&1
  git push --quiet --set-upstream  origin master
}

setup_git
commit_website_files
upload_files