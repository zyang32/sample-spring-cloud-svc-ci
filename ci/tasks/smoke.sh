#!/usr/bin/env bash
set -e

export GRADLE_OPTS=-Dorg.gradle.native=false
cd repo
gradle --full-stacktrace --parallel --no-daemon cfSmokeTest