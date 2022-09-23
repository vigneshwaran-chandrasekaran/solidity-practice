// SPDX-License-Identifier: MIT

pragma solidity ^0.8.5;

contract simpleStorage {
    uint256 storeData = 0;

    function setData(uint256 x) public {
        storeData = x;
    }

    function getData() public view returns (uint256) {
        return storeData;
    }

    function getDataMultiple() public view returns (uint256) {
        return storeData * 5;
    }
}
