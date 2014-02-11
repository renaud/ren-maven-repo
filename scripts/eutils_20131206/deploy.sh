#!/bin/sh

#ftp://ftp.ncbi.nlm.nih.gov/pub/eutils/soap/v2.0/java/current/

FILE=eutils_axis2.jar
GROUP_ID=gov.nih.nlm.ncbi
ARTIFACT_ID=ncbi-eutils
VERSION=20131206

REPO=snapshot-repo
URL=file:/Volumes/HDD2/ren_data/dev_hdd/sources/maven_repo_googlecode/snapshots/
REMOTE_URL=https://ren-maven-repo.googlecode.com/git/snapshots

mvn deploy:deploy-file -Dfile=$FILE  -DgroupId=$GROUP_ID -DartifactId=$ARTIFACT_ID -Dversion=$VERSION -Dpackaging=jar -DrepositoryId=$REPO -Durl=$URL

echo '\n\n<dependency>\n<groupId>'$GROUP_ID'</groupId>\n<artifactId>'$ARTIFACT_ID'</artifactId>\n<version>'$VERSION'</version>\n</dependency>\n\n'
echo '\n<repositories>\n<repository>\n<id>'$REPO'</id>\n<url>'$REMOTE_URL'</url>\n</repository>\n</repositories>\n\n'

echo 'cd to '$URL

