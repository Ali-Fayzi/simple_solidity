// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <=0.9.0;

import './07_library.sol';
contract TestLib{

    constructor(){
    }

    function get_add_res(int a , int b) public pure returns(int){
        return ops.add(a,b);
    }
}