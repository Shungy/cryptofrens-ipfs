#!/bin/sh

set -e
set -u

project=cryptofrens

printf 'Pinning the metadata block for %s project: ' "$project"
ipfs block put --cid-codec=dag-pb --mhtype=sha2-256 --mhlen=32 --pin=true --allow-big-block=true -- "$project"/metadata_block

printf 'Pinning the metadata files for %s project:\n' "$project"
ipfs add --cid-version=1 --hash=sha2-256 --pin=true --progress=true --silent=true -- "$project"/*.json

printf 'Pinning the image files for %s project:\n' "$project"
ipfs add --cid-version=1 --hash=sha2-256 --pin=true --progress=true --silent=true -- "$project"/*.png

project=tartans

printf 'Pinning the image block for %s project: ' "$project"
ipfs block put --cid-codec=dag-pb --mhtype=sha2-256 --mhlen=32 --pin=true --allow-big-block=true -- "$project"/image_block

printf 'Pinning the image files for %s project:\n' "$project"
ipfs add --cid-version=1 --hash=sha2-256 --pin=true --progress=true --silent=true -- "$project"/*.jpg

project=dancingfrens

printf 'Pinning the metadata files with root dir for %s project: ' "$project"
ipfs add --cid-version=1 --wrap-with-directory --hash=sha2-256 --pin=true --progress=true --silent=true -- "$project"/*.json

printf 'Pinning the image files for %s project:\n' "$project"
ipfs add --cid-version=1 --hash=sha2-256 --pin=true --progress=true --silent=true -- "$project"/*.gif

printf 'Everything is pinned successfully!\n'
