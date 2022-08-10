// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract FunctionOutpus {
    // public = outside and internal usage
    // external = only outside
    // internal = only inside
    function returnMany() public pure returns (uint, bool) {
        return (1, true);
    }

    function named() public pure returns (uint x, bool b ) {
        return (1, true);
    }

    function assigned() public pure returns (uint x, bool b ) {
        x = 1;
        b = true;
    }

    function destructingAssignments() public pure {
        // this is not working, shows error
        (uint x, bool b) = returnMany();
    }
}