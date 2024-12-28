// SPDX-License-Identifier:MIT
pragma solidity >=0.7.0 <=0.9.0;

contract Address{

    address public contractAddress;
    address public ownerAddress;  
    address public zeroAddress = address(0);
    constructor(){
        // just in constructor
        contractAddress = address(this);
        // balance of address
        // address(this).balance;
        ownerAddress = msg.sender;
        // msg.value => value of token
    }
}