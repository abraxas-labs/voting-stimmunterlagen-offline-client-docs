#!/bin/bash

echo "-------------------------------------------------"
echo "Environment Variables"
echo "-------------------------------------------------"
echo "GIT_REPOSITORY_DIRECTORY   $GIT_REPOSITORY_DIRECTORY"
echo "GIT_REPOSITORY_URL         $GIT_REPOSITORY_URL"
echo "GIT_TAG                    $GIT_TAG"
echo "APP_VERSION                $APP_VERSION"
echo "CI_DEPLOYMENT_DIR          $CI_DEPLOYMENT_DIR"

git config --global http.sslVerify false
rm -rf $GIT_REPOSITORY_DIRECTORY
git clone $GIT_REPOSITORY_URL $GIT_REPOSITORY_DIRECTORY
cd $GIT_REPOSITORY_DIRECTORY
git checkout $GIT_TAG

cp /tmp/nuget.config backend/nuget.config
cp /tmp/.npmrc frontend/.npmrc

cd frontend
npm ci
npm run create-package

cp -r $GIT_REPOSITORY_DIRECTORY/frontend/packages $CI_DEPLOYMENT_DIR