#!/bin/bash

go env > .go.env
sed -i 's/^/export /g' .go.env
source .go.env
rm -rf .go.env