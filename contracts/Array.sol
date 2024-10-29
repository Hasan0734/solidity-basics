// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// Array - dynamic or fixed size
// Initialization
// Insert (push), get, update, delete, pop, length
// Creating array in memory
// Returning aray from function


contract Array {
    uint[] public nums = [1, 2, 3];
    uint[3] public numsFixed = [4,5, 4]; // fixed array is max size of array length

    function examples() external {
        nums.push(4); // [1, 2, 3, 4]
        uint x = nums[1]; // get value by index : 2
        nums[2] = 777; // [1, 2, 777, 4]
        delete nums[1]; // [1, 0, 777, 4]
        nums.pop(); // [1, 0, 777]
        nums.length;

        // create array in memory
        uint[] memory a = new uint[](5); // cant't apply array pop and push just update value by index
        // a.pop();
        // a.push();
        a[1] = 12;
    }
    function returnArray () external  view returns(uint[] memory) {
        return nums;
    }
}
