#!/bin/bash
# source: https://github.com/BtbN/FFmpeg-Builds/blob/master/util/prunetags.sh
# Copyright 2020-2021 BtbN <btbn@btbn.de>
# Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
# The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

set -e
git fetch --tags
TAGS=( $(git tag | sort -r) )

KEEP_DAILY=30

DAILY_TAGS=()
KEEP_TAGS=()

CUR_MONTH="-1"
CUR_DAY="-1"

for TAG in ${TAGS[@]}; do
    if [[ ${#DAILY_TAGS[@]} -lt ${KEEP_DAILY} ]]; then
        TAG_MONTH="$(echo $TAG | cut -d- -f2)"
        TAG_DAY="$(echo $TAG | cut -d- -f3)"
        KEEP_TAGS+=( "$TAG" )
        if [[ ${TAG_MONTH} != ${CUR_MONTH} ]]; then
            CUR_MONTH="${TAG_MONTH}"
            CUR_DAILY="-1"
        fi
        if [[ ${TAG_DAY} != ${CUR_DAY} ]]; then
            CUR_DAY="${TAG_DAY}"
            DAILY_TAGS+=( "$TAG" )
        fi
    fi
done

for TAG in ${KEEP_TAGS[@]}; do
    echo "Keep ${TAG}"
    TAGS=( "${TAGS[@]/$TAG}" )
done

for TAG in ${TAGS[@]}; do
    echo "Deleting ${TAG}"
    gh release delete "${TAG}" || true
    git tag -d "${TAG}"
done

git push --tags --prune
