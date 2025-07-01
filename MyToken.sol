// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

contract MyToken {
    mapping( address =>  uint256 ) private balances; //mapping used to store the balance corresponding to each address
    uint256 public totalSupply; //A uint256 variable is used to store the total supply of the token. It is defined as public and can be queried by anyone.
    address private owner; //An address variable is used to store the issuer of this token. This is used for some permission control
    
    constructor(uint256 initialSupply) {
        mint(msg.sender, initialSupply); // mints the intial supply of tokens to the deployer's wallet
        owner= msg.sender; //The constructor sets the owner of the contract to the address that deploys it.
    }
    
    // Function to mint new tokens. made public so that the owner can call it any time
    function mint(address recipient, uint256 amount) public {
        require(msg.sender == owner,"Only the owner can perform this action");  
        balances[recipient] += amount; //Increase the balance of the recipient by the specified amount
        totalSupply += amount; //Increase the total supply by the specified amount
    }
    // Function to query the balance corresponding to an address
    function balanceOf(address account) public view returns (uint256) {
        return balances[account]; //Returns the balance of the specified account
    }

    function transfer(address recipient, uint256 amount) public returns(bool) {
        require(amount <= balances[msg.sender], "Not enough balance.");
        // require(recipient != address(0), "Invalid recipient address.");
        balances[msg.sender] -= amount; //Decrease the balance of the sender by the specified amount
        balances[recipient] += amount; //Increase the balance of the recipient by the specified amount
        return true;
    }


}