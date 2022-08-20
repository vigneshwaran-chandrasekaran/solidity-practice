// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

// function modifier - reuse code before and / or after function
// Basic, Inputs, sandwich

contract FunctionModifier {
    bool public paused;
    uint256 public count;

    function setPause(bool _paused) external {
        paused = _paused;
    }

    // Basic
    modifier whenNotPaused() {
        require(!paused, "paused");
        _;
    }

    function inc() external whenNotPaused {
        count += 1;
    }

    function dec() external whenNotPaused {
        count -= 1;
    }

    // Inputs
    modifier cap(uint256 _x) {
        require(_x < 100, "X >= 100");
        _;
    }

    function incBy(uint256 _x) external whenNotPaused cap(_x) {
        count += _x;
    }

    modifier sandwich() {
        //code here
        count += 10;
        _;

        //more code here
        count *= 2;
    }

    function foo() external sandwich returns (uint256) {
        count += 1;
        return count;
    }
}
