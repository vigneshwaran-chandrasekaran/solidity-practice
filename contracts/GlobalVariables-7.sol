// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract GlobalVariables {
    // view is like pure - read only function
    // view functions can read data from state variables and global variables
    function globalVariable()
        external
        view
        returns (
            address,
            bytes4,
            uint256,
            uint256
        )
    {
        address sender = msg.sender;
        bytes4 sig = msg.sig;
        uint256 timeStamp = block.timestamp;
        uint256 blockNum = block.number;
        return (sender, sig, timeStamp, blockNum);

        // msg.data (bytes): complete calldata
        // msg.gas (uint): remaining gas
        // msg.sender (address): sender of the message (current call)
        // msg.sig (bytes4): first four bytes of the calldata (i.e. function identifier)
        // msg.value (uint): number of wei sent with the message
    }
}
