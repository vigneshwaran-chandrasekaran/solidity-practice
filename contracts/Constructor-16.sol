// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract Constructor {
    address public owner;
    uint256 public x;

    constructor(uint256 _x) {
        owner = msg.sender;
        x = _x;
    }
}
