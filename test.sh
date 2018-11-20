#!/bin/bash

set -e;

set -x;

    xcodebuild test -destination "name=iPhone 6"  -scheme NamingConventions

