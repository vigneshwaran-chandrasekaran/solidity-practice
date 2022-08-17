// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;


// Examples to differentiate:

// public - all can access

// external - Cannot be accessed internally, only externally

// internal - only this contract and contracts deriving from it can access

// private - can be accessed only from this contract

contract FunctionIntro {
    function add(uint x, uint y) external pure returns (uint) {
        return x + y;
    }

    function sub(uint x, uint y) external pure returns (uint) {
        return x - y;
    }

    function mul(uint x, uint y) internal pure returns (uint) {
        return x * y;
    }
}