#!/bin/sh

setup_git() {
  git config --global user.email "builds@travis-ci.org"
  git config --global user.name "Travis CI Bot"
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
if [ "$TRAVIS_BRANCH" = master ]; then
      echo "No changes"
else
    upload_files
fi
