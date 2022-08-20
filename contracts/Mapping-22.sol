// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

// Mapping is like dictionary in python
// How to declare a mapping (simple and nested)
// Set, get, delete

contract Mapping {
    mapping(address => uint256) public balances;
    mapping(address => mapping(address => bool)) public isFriend;

    function examples() external {
        balances[msg.sender] = 123;

        uint256 bal = balances[msg.sender];

        uint256 bal3 = balances[address(1)]; // 0

        balances[msg.sender] += 223; // 123 + 223 = 346

        delete balances[msg.sender];
    }
}
