// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

// state variable store the value on the block chain

contract StateVariables {
    // state variable
    uint public myUint = 123;

    function foo() external pure returns (uint) {
        // local variable
        uint myLocal = 22;
        myLocal += 1;
        return myLocal;
    }
}