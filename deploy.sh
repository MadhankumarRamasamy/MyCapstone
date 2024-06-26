#!/bin/bash

echo "$DOCKER_PASS" | docker login -u "$DOCKER_USERNAME" --password-stdin

if [[ $GIT_BRANCH == "origin/main" ]]; then
    docker tag myreactapp madhankumarramasamy/prod
    docker push madhankumarramasamy/prod
elif [[ $GIT_BRANCH == "origin/dev" ]]; then
    docker tag myreactapp madhankumarramasamy/dev
    docker push madhankumarramasamy/dev
fi

