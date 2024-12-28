// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <=0.9.0;

contract Error_{

    address public owner;
    string public fullName= "Mohammad Fayzi";
    constructor(){
        owner = msg.sender;
    }
    modifier checkOwnser(){
        require(owner == msg.sender , "Only Owner Can ... ");
        _;
    }
    function change_name() public checkOwnser() returns(string memory){
        fullName = "Ali Fayzi";
        return fullName;
    }
}