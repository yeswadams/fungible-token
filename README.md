# FUngibleToken (FTS)
================

A simple ERC-20 token contract written in Solidity. ERC20 is Ethreum Request for Comment 20 which is a standard that was introduced in Ethereum in 2015 that defines a set of rules for creating tokens on the Ethereum blockchain. It Ensures Security, interporability and  compactibility of dApps.

## Overview

This contract allows for the creation and management of a custom token, including minting, transferring, and querying balances.

## Features

* Minting: The contract allows the owner to mint new tokens and assign them to any address.
* Transferring: Token holders can transfer their tokens to other addresses.
* Balance Querying: Anyone can query the balance of a specific address.

## Functions

### Constructor

* `constructor(uint256 initialSupply)`: Initializes the contract with an initial supply of tokens, which are minted to the deployer's wallet. The deployer is also set as the owner of the contract.

### Public Functions

* `mint(address recipient, uint256 amount)`: Mints new tokens and assigns them to the specified recipient. Only the owner can call this function.
* `balanceOf(address account)`: Returns the balance of the specified account.
* `transfer(address recipient, uint256 amount)`: Transfers tokens from the sender's account to the recipient's account.

## Requirements

* Solidity version: ^0.8.17

## Deployment

To deploy this contract, simply compile and deploy it to your preferred Ethereum network using your favorite tooling (e.g., Truffle, Hardhat, Remix).

## Testing

You can test this contract using the provided functions and verifying the expected behavior.

## License

This contract is released under the UNLICENSED license.

## Authors

* [Adams Yeswa]
