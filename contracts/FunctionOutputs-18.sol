// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract FunctionOutpus {
    // public = outside and internal usage
    // external = only outside
    // internal = only inside
    function returnMany() public pure returns (uint256, bool) {
        return (1, true);
    }

    function named() public pure returns (uint256 x, bool b) {
        return (1, true);
    }

    function assigned() public pure returns (uint256 x, bool b) {
        x = 1;
        b = true;
    }

    function destructingAssignments() public pure {
        // this is not working, shows error
        (uint256 x, bool b) = returnMany();
    }
}
