// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

// require, revert, assert
// - gas refund, state updates are reverted
// custom error - save gas
contract Errors {
    function testRequire(uint256 _i) public pure {
        require(_i < 10, "i is greater than 10");
        // more code
    }

    function testRevert(uint256 _i) public pure {
        //    if(_i > 10) {
        //        revert("i > 10")
        //    }

        if (_i > 1) {
            // some code
            if (_i > 5) {
                // some more code
                if (_i > 10) {
                    revert("i > 10");
                }
            }
        }
    }

    uint256 public num = 123;

    function foo() public {
        num += 1;
    }

    function testAssert() public view {
        assert(num == 123);
    }

    function initState() public {
        num = 123;
    }

    error MyError(address caller, uint256 i);

    function testCustomError(uint256 _i) public view {
        if (_i > 10) {
            revert MyError(msg.sender, _i);
        }
    }
}
