#!/bin/sh

set -eux
git clone --progress --single-branch --branch "${INPUTS_BRANCH:-${GITHUB_REF##*/}}" "https://${GITHUB_REPOSITORY_OWNER}:${GITHUB_TOKEN}@github.com/${GITHUB_REPOSITORY}.git" .
