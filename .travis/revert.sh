#!/bin/sh

setup_git_revert() {
  git config --global user.email "builds@travis-ci.org"
  git config --global user.name "Travis CI"
}

commit_website_files_revert() {
  git checkout -b master
  git add .
  git commit --message "Travis build: $TRAVIS_BUILD_NUMBER"
}

upload_files_revert() {
  git push -f https://kausthob:${GH_TOKEN}@github.com/kausthob/sfdx-travisci.git HEAD:integration
}

setup_git_revert
commit_website_files_revert
upload_files_revert

