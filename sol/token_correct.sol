// SPDX-License-Identifier: MIT
pragma solidity 0.5.16;

contract Token {
    mapping(address => uint) public balances;
    uint public totalSupply;

    constructor(uint _initialSupply) public{
        balances[msg.sender] = totalSupply = _initialSupply;
    }

    function transfer(address to, uint value) external returns (bool) {
        require(balances[msg.sender] >= value, "Message");
        balances[msg.sender] -= value;
        balances[to] += value;
        return true;
    }

    function balanceOf(address owner) external view returns (uint balance) {
        return balances[owner];
    }
}
