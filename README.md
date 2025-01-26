# NFT Projects IPFS Pin Repository

This repository provides IPFS pinning files for select NFT projects I've created or chosen to distribute.

## Quick Start
1. Install `kubo` (IPFS implementation)
2. Run `sh ipfs_pin.sh`

## Implementation Details
Two complementary approaches are used:

### Blocks (`blocks/` directory)
For projects with unminted tokens, we provide DAG-PB blocks that represent the complete collection structure. These blocks can be pinned without attempting to pin their child objects (unminted token metadata/assets). Pin blocks with:
```bash
ipfs dag put --store-codec=dag-pb --input-codec=dag-pb --pin=true --hash=sha2-256 -- blocks/*
```

### CAR Files (`cars/` directory)
CAR files contain only the minted tokens' data while preserving hash formats. For incomplete collections, the root IPFS hash is maintained through the separate block files. Pin CAR files with:
```bash
ipfs dag import --stats --pin-roots=true -- cars/*
```

## Project Details

### CryptoFrens
- Contract: `avax:0xA5Bc94F267e496B10FBe895845a72FE1C4F1Ef43`
- Metadata: `ipfs://bafybeieay5ixb6nnvhenjavd5vhpk5rbk3wlitiv3piqezwgcfrtvdkvqy`

### DancingFrens
- Contract: `avax:0xDB423200Eb9c6DDEf6F854eaBD685260fB0B9741`
- Metadata: `ipfs://bafybeic4j6wjqvih5b7usnv5qhfptuq24besshmwy437yuahmc4fr66gqe`

### Tartans
- Contract: `avax:0x07bd0D76347BA943D162f278DdFCb844C359b20d`
- Images: `ipfs://bafybeibx3g6xpi6c3vosj6h6wgb6eekulbqwxrqytgv2asyptlneu6okfi`

### MugFrens
- Contract: `0xfDB6b1B94f8A3bDFA5b1a6cf9FFC3c7872Ac6E57`
- Metadata: `ipfs://bafkreiebowuoukglxgqfqeezxl5lk2ral3n6jfedjryyd2slgq2frj6sdi`

### WinterWitches
- Contract: `avax:0xfDB6b1B94f8A3bDFA5b1a6cf9FFC3c7872Ac6E57`
- Metadata: `ipfs://bafybeia6nwn6p6tjl5shkt4g36zljrlrb4zi5427pk2sxwl2wbvgfha4wq`

### Cryptookurs
- Contract: `avax:0x29548296Bbf189cB69c4BE8E81112E3625e141eA`
- Combined: `ipfs://bafybeiejrwhnggmro4xcvwcou32uhld3qrbwwo3fzz6mkpyclqp3gj5ere`
