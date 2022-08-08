// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract ViewPureFunctions {
    uint public num;

    // view function is read only function
    // it will not change the state variables, but can read the data from state
    // and view function not writing anything on the blockchain
    function viewFunc() external view returns (uint) {
        return num;
    }

    function pureFunc() external pure returns (uint) {
        return 1;
    }

    function addToNum(uint x) external view returns (uint) {
        return num + x;
    }

    function add(uint x, uint y) external pure returns (uint) {
        return x + y;
    }
}

// https://youtu.be/vOmXqJ4Qzbc?list=PLO5VPQH6OWdVQwpQfw9rZ67O6Pjfo6q-p