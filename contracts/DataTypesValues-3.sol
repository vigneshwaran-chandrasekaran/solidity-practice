// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract ValueTypes {
    bool public b = true;
    bool private c = false;

    uint256 public d = 23; // unit = uint256 0 to 2**256 - 1
    //        uint8 0 to 2**8 - 1
    //        uint16 0 to 2**16 - 1

    int256 public e = -886;
    int256 public f = 42886; // int = int256 -2**255 to 2**256 - 1

    int256 public minInt = type(int256).min;
    int256 public maxInt = type(int256).max;
    uint8 public g = type(uint8).min;
    uint8 public h = type(uint8).max;
    address public addr = 0x8F03f1a3f10c05E7CCcF75C1Fd10168e06659Be7;
    bytes32 public b32 =
        0x7465737400000000000000000000000000000000000000000000000000000000;
}

// https://youtu.be/8Tj-Th_S7NU?list=PLO5VPQH6OWdVQwpQfw9rZ67O6Pjfo6q-p
