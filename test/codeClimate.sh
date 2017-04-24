#!/bin/bash
set -ev
# if the test was not a PR, send the coverage to codeClimate
if [ "${TRAVIS_PULL_REQUEST}" = "false" ]; then
  npm install -g codeclimate-test-reporter
  codeclimate-test-reporter < coverage/report-lcov/lcov.info
fi
