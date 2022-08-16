// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

// state variable store the value on the block chain

contract LocalVariables {
    // state variable - available after deployment also, stored in blockchain
    uint256 public myUint = 123;
    bool public b = false;
    address public myAddress = 0xCC733502B1b9bAD00F4d4C1908067669B5a6e9c1;

    function foo() external {
        // local variable
        uint256 myLocal = 22;
        myLocal += 1;

        myUint = 255;
        b = true;
        myAddress = address(2);
    }
}
