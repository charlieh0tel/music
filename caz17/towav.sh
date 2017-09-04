#!/bin/sh

set -o errexit

for x in *.midi; do
  y=${x%.midi}.wav
  timidity ${x} -Ow -o ${y}
done
