#!/bin/bash
#src/test.sh
EXPECTED="Hello, test!"
OUTPUT=$(node -e "console.log(require('./app.js')('test'))")

if [ "$OUTPUT" == "$EXPECTED" ]; then
    echo "Tests passed"
    exit 0
else
    echo "Tests failed"
    exit 1
fi