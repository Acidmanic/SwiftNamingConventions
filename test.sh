#!/bin/bash

set -e;

set -x;

    xcodebuild test -destination "name=iPhone 6"  -scheme "NamingConventions iOS" && \
    xcodebuild test -destination "platform=OS X" -scheme "NamingConventions macOS"  && \
    xcodebuild test -destination "name=Apple TV" -scheme "NamingConventions tvOS"

