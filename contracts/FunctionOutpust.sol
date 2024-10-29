// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// Return mutliple outputs
// Named outputs
// Destructruing Assigment

contract FunctionOutputs{
    function retrunMany() public  pure returns (uint, bool){
        return (1, true);
    }

    function named() public  pure  returns (uint x, bool b){
        return (1, true);
    }

    function assigned() public pure returns (uint x, bool b){
        x = 1;
        b = true;
    }

    function destructingAssigments() public  pure returns(uint, bool) {
       (uint num, bool b) = retrunMany();
       return (num, b);
    }
    
}