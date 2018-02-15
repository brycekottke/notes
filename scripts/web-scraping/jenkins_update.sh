#!/bin/bash

jenkins_url="<JENKINS_URL>"

## check if current version is behind latest version
curl -s "https://jenkins.io/download/" |grep "Download Jenkins" -A 1 \
  |grep -v "Download Jenkins" | head -1 \
  > latest_version

curl -s ${jenkins_url} |grep data-version \
  |awk -F "data-version" '{print $2}' \
  |awk -F "href=\"#skip2content\"" '{print $1}' \
  |awk -F "\"" '{$0=$2}1' \
  > current_version


current=$(cat current_version)
latest=$(cat latest_version)

if [[ ${current} < ${latest} ]]; then
  echo "OUTDATED VERSION"
else
  echo "LATEST VERSION"
fi

## cleanup temp files
rm latest_version current_version
