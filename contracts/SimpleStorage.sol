// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract SimpleStorage{
    string public text;

    // aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
    // callData 103252 gas
    // memory 103797 gas

    function set(string calldata _text) external  {
        text = _text;
    }

    function get() external view returns (string memory) {
        return text;
    }
}