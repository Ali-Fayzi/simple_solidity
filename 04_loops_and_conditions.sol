// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <=0.9.0;


contract LoopsAndConditions{

    function sum_0_to_100() public pure returns (uint){
        uint sum = 0;
        for(uint i=0;i<=100;i++){
            sum += i;
        }
        return sum;
    }

    function sum_0_to_100_with_condition() public pure returns (uint){
        uint sum = 0;
        for(uint i=0;i<=1000;i++){
            if (i > 100){
                break;
                // continue
            }else{
                sum += i;
            }
        }
        return sum;
    }

    function sum_0_to_100_with_while() public pure returns(uint){
        uint i = 0;
        uint sum = 0;
        while (i <= 100){
            sum += i;
            i++;
        }
        return sum;
    }

    function sum_0_to_100_with_doWhile() public pure returns(uint){
        uint i = 0;
        uint sum = 0;
        do{
            sum += i;
            i++;
        }while(i <= 100);
        return sum;
    }
}