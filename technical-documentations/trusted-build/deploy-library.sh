#!/bin/bash

echo "-------------------------------------------------"
echo "Environment Variables"
echo "-------------------------------------------------"
echo "GIT_REPOSITORY_DIRECTORY   $GIT_REPOSITORY_DIRECTORY"
echo "GIT_REPOSITORY_URL         $GIT_REPOSITORY_URL"
echo "GIT_TAG                    $GIT_TAG"
echo "CI_BUILD_VERSION           $CI_BUILD_VERSION"
echo "CI_BUILD_CONFIGURATION     $CI_BUILD_CONFIGURATION"
echo "CI_PROJECT_DIR             $CI_PROJECT_DIR"
echo "CI_PACKAGE_OUT_DIR         $CI_PACKAGE_OUT_DIR"
echo "CI_NUGET_SOURCE_PUBLIC     $CI_NUGET_SOURCE_PUBLIC"
echo "CI_NUGET_SOURCE_LOCAL      $CI_NUGET_SOURCE_LOCAL"

git config --global http.sslVerify false
rm -rf $GIT_REPOSITORY_DIRECTORY
git clone $GIT_REPOSITORY_URL $GIT_REPOSITORY_DIRECTORY
cd $GIT_REPOSITORY_DIRECTORY
git checkout $GIT_TAG

dotnet restore $projectPath -s $CI_NUGET_SOURCE_PUBLIC -s $CI_NUGET_SOURCE_LOCAL
dotnet pack $projectPath -c $CI_BUILD_CONFIGURATION --no-restore -o $CI_PACKAGE_OUT_DIR /p:Version=$CI_BUILD_VERSION /p:ContinuousIntegrationBuild=true /p:EnableSourceLink=false /p:SuppressImplicitGitSourceLink=true
