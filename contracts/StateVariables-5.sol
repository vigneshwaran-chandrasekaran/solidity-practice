// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

// state variable store the value on the block chain

contract StateVariables {
    // state variable
    uint256 public myUint = 123;

    function foo() external pure returns (uint256) {
        // local variable
        uint256 myLocal = 22;
        myLocal += 1;
        return myLocal;
    }
}
