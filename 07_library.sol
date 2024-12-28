// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <=0.9.0;

library ops{
    function add(int a , int b ) public pure returns(int){
        return a + b;
    }
    function sub(int a , int b ) public pure returns(int){
        return a - b;
    }
    function mul(int a , int b ) public pure returns(int){
        return a * b;
    }
    function div(int a , int b) public pure returns(int){
        return a/b;
    }
}