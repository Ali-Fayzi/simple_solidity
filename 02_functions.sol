// SPDX-License-Identifier:MIT
pragma solidity >=0.7.0 <=0.9.0;

contract Functions{
    // states
    string name;
    string family;
    // constructor
    constructor(){
    }


    // setter
    function set_name(string memory _name) public {
        name = _name;
    }

    function set_fullName(string memory _name , string memory _family) public{
        name = _name;
        family = _family;
    }
    // getter
    function get_name_fn_view() public view returns(string memory){
        return name;
    }

    function get_name_fn_pure() public pure returns(string memory){
        string memory newName = "Ali";
        return newName;
    }
    
    function get_fullName() public view returns(string memory,string memory){
        return(name,family);
    }
}