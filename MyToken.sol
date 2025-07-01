// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

contract MyToken {
    mapping( address =>  uint256 ) private balances; //mapping used to store the balance corresponding to each address
    uint256 public totalSupply; //A uint256 variable is used to store the total supply of the token. It is defined as public and can be queried by anyone.
    address private owner; //An address variable is used to store the issuer of this token. This is used for some permission control
    
    constructor(uint256 initialSupply) {
        mint(msg.sender, initialSupply); //Mint the initial supply of tokens to the address that deploys the contract
        owner= msg.sender; //The constructor sets the owner of the contract to the address that deploys it.
    }
    
    // Function to mint new tokens. made public so that the owner can call it any time

    function mint(address recipient, uint256 amount) public {
        require(msg.sender == owner,"Only the owner can perform this action");  
        balances[recipient] += amount; //Increase the balance of the recipient by the specified amount
        totalSupply += amount; //Increase the total supply by the specified amount
    }
}