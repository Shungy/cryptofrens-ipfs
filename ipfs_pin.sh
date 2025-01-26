#!/bin/sh

set -e
set -u

ipfs dag import --pin-roots=true -- cars/*
ipfs dag put --store-codec=dag-pb --input-codec=dag-pb --pin=true --hash=sha2-256 -- blocks/*

printf 'Everything is pinned successfully!\n'
