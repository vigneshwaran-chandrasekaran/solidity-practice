// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

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
