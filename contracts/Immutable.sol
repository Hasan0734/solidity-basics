// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Immutable {

    // 204371 gas
    // address public  owner = msg.sender;

    // 181598 gas
    address public immutable owner;


    constructor() {
        owner = msg.sender;
    }


    uint public x;
    function foo() external {
        require(msg.sender == owner);
        x += 1;

    }

    // more code here
}