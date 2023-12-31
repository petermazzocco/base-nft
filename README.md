## Getting Started

Hello and welcome to the ERC721 on Foundry and Base tutorial! If you aren't following, please
head to this link to follow the tutorial:

https://www.hellopeter.xyz/tutorials/foundryonbase

Please follow the tutorial and enjoy learning how to use Foundry and deploying on the Base testnet!

## Foundry Documentation

If you need documentation help for Foundry:

https://book.getfoundry.sh/

## Commands

### Create New Project

```bash
forge init base-nft
```

### Compile the Contract

```bash
forge build
```

### Test the Contract (with gas-report)

```bash
forge test --gas-report
```

### Deploying the Contract

```bash
  forge create --rpc-url <your_rpc_url> --private-key <your_private_key> src/BaseNFT.sol:BaseNFT --constructor-args "Cute Corigs" "CORG" "https://ipfs.io/ipfs/Qmeji1kHmGJBVDKLRXRXG42viH3mog5rQY3kNWgusGgP8h?preview=1&_gl=1*l4fut8*_ga*MTIxNzQ0Mzk0NC4xNjkwNDAzMzgw*_ga_5RMPXG14TE*MTY5NDExMTQwNS4zLjEuMTY5NDExMTQxNC41MS4wLjA"
```

## Auxiliary items

### Contract Address

If you some how lost your contract address and cannot find it, you can use one that's already deployed to mint:

0x207083E1F0BE72350EbDc7DFF40A80B7CC19390f

### Base URI Link

`https://ipfs.io/ipfs/Qmeji1kHmGJBVDKLRXRXG42viH3mog5rQY3kNWgusGgP8h?preview=1&_gl=1*l4fut8*_ga*MTIxNzQ0Mzk0NC4xNjkwNDAzMzgw*_ga_5RMPXG14TE*MTY5NDExMTQwNS4zLjEuMTY5NDExMTQxNC41MS4wLjA`
