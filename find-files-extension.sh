#!/bin/bash

find . -type f -name "*.txt" -exec basename {} .txt \; | awk '1; END { print "" }'
