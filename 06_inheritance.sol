// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <=0.9.0;

contract A{
    string public name = "Ali";
    string public family = "Fayzi";
    uint public age = 26;

    function show_info() public virtual returns(string memory,string memory,uint){
        return(name,family,age);
    }
}

contract B is A{
    function show_info() public  override  returns( string memory,string memory , uint){
        bool firstName = false;
        if (firstName){
            return super.show_info();
        }else{
            return(family,name,age);
        }
    }
}