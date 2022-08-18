// SPDX-License-Identifier: MIT

pragma solidity >= 0.4.22 <0.9.0;

contract ViewPureFunctions {
    uint256 public num;

    // view function is read only function
    // it will not change the state variables, but can read the data from state
    // and view function not writing anything on the blockchain
    function viewFunc() external view returns (uint256) {
        return num;
    }

    function pureFunc() external pure returns (uint256) {
        return 1;
    }

    function addToNum(uint256 x) external view returns (uint256) {
        return num + x;
    }

    function add(uint256 x, uint256 y) external pure returns (uint256) {
        return x + y;
    }
}

// https://youtu.be/vOmXqJ4Qzbc?list=PLO5VPQH6OWdVQwpQfw9rZ67O6Pjfo6q-p
