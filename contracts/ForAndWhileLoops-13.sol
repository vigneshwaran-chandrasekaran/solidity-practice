// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract ForAndWhileLoops {
    function loops() external pure {
        for (uint256 i = 0; i < 10; i++) {
            if (i < 3) {
                continue;
            }

            if (i == 5) {
                break;
            }
        }

        uint256 j = 0;
        while (j < 3) {
            j++;
        }
    }

    function sum(uint256 _n) external pure returns (uint256) {
        // 222 - 106112 gas
        // 2 - 22952 gas
        // 100 - 59996 gas
        uint256 s;
        for (uint256 i = 0; i <= _n; i++) {
            s += i;
        }
        return s;
    }
}
