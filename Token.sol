// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;

contract Token {
    string public name;
    string public symbol;
    uint256 public decimals;
    uint256 public totalSupply;
    
    mapping(address => uint256) public balanceOf;
    
    constructor(string memory _name, string memory _symbol, uint _decimals, uint _totalSypply) {
        name = _name;
        symbol = _symbol;
        decimals = _decimals;
        totalSupply = _totalSypply;
        balanceOf[msg.sender] = totalSupply;
    }
    
}