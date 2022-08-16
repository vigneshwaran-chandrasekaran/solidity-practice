// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

// Examples to differentiate:

// public - all can access

// external - Cannot be accessed internally, only externally

// internal - only this contract and contracts deriving from it can access

// private - can be accessed only from this contract

contract FunctionIntro {
    function add(uint256 x, uint256 y) external pure returns (uint256) {
        return x + y;
    }

    function sub(uint256 x, uint256 y) external pure returns (uint256) {
        return x - y;
    }

    function mul(uint256 x, uint256 y) internal pure returns (uint256) {
        return x * y;
    }
}
