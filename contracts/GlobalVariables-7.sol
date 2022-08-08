// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract GlobalVariables {
    // view is like pure - read only function
    // view functions can read data from state variables and global variables
   function globalVariable() external view returns(address, bytes4, uint, uint) {
       address sender = msg.sender;
       bytes4 sig = msg.sig;
       uint timeStamp =  block.timestamp;
       uint blockNum = block.number;
       return (sender, sig, timeStamp, blockNum);

        // msg.data (bytes): complete calldata
        // msg.gas (uint): remaining gas
        // msg.sender (address): sender of the message (current call)
        // msg.sig (bytes4): first four bytes of the calldata (i.e. function identifier)
        // msg.value (uint): number of wei sent with the message
   }
}