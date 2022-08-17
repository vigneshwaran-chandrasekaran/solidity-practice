// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

// state variable store the value on the block chain

contract LocalVariables {
    // state variable - available after deployment also, stored in blockchain
    uint public myUint = 123;
    bool public b = false;
    address public myAddress = 0xCC733502B1b9bAD00F4d4C1908067669B5a6e9c1;

    function foo() external{
        // local variable
        uint myLocal = 22;
        myLocal += 1;

        myUint = 255;
        b = true;
        myAddress = address(2);
    }
}