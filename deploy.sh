#!/bin/bash
docker login -u $DOCKER_USERNAME -p $DOCKER_PASS
if [[ $GIT_BRANCH == "origin/main" ]]; then
docker tag myreactapp madhankumarramasamy/prod
docker push madhankumarramasamy/prod
elif [[ $GIT_BRANCH == "origin/dev" ]]; then
 docker tag myreactapp madhankumarramasamy/dev
 docker push madhankumarramasamy/dev
fi
