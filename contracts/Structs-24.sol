// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract Structs {
    struct Car {
        string model;
        uint256 year;
        address owner;
    }

    Car public car;
    Car[] public cars;

    mapping(address => Car[]) public carsByOwner;

    function examples() external {
        // 3 ways we can define the struct
        // 1st way
        Car memory toyota = Car("Toyota", 1990, msg.sender);
        // 2nd way
        Car memory tvs = Car({model: "TVS", year: 1992, owner: msg.sender});

        Car memory tesla;
        // 3rd way
        tesla.model = "tesla";
        tesla.year = 2232;
        tesla.owner = msg.sender;

        cars.push(toyota);
        cars.push(tvs);
        cars.push(tesla);
    }
}
