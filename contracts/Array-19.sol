// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

// Array - dynamic or fixed size
// Initialization
// Insert (push), get, update, delete, pop, length
// Creating array in memory
// Returning array from function 

contract Array {
    uint[] public nums = [1, 2, 3];
    uint[3] public numsFixed = [4, 5, 6];

    function examples() external {
        nums.push(4);
        uint x = nums[1];
        nums[2] = 322;
        delete nums[1]; // [1, 0, 322, 4]
        // on deleting the index value, size will not change

        // to delete last element from array
        nums.pop(); // [1, 0, 322]

        uint len = nums.length;

        // memory array
        uint[] memory a = new uint[](5);
        // memory array is fixed size, 
        // we can't use push, pop on it
    }

    function returnArray() external view returns (uint[] memory) {
        return nums;
    }
}