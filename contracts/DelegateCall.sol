// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

/*

A calls B, sends 100 wei
        B Calls C, sends 50 wei
A ---> B --- C
             msg.sender = B
             msg.vlaue = 50
             execute code on C's state variables
             use ETH in C

A calls B, sends 100 wei
        B delegatecall C
A ---> B --- C
             msg.sender = A
             msg.vlaue = 100
             execute code on B's state variables
             use ETH in B

*/

contract TestDelegateCall{
    uint public  num;
    address public sender;
    uint public value;

    function setVars(uint _num) external payable {
        num = 2 *  _num;
        sender = msg.sender;
        value = msg.value;
    }
}

contract DelegateCall{
    uint public  num;
    address public sender;
    uint public value;

    function setVars(address _test, uint _num) external payable {
        // _test.delegatecall(
        //     abi.encodeWithSignature("setVars(uint245)", _num)
        //     );
        (bool success, bytes memory data) =  _test.delegatecall(
            abi.encodeWithSelector(TestDelegateCall.setVars.selector, _num)
            );

        require(success, "delegatecall failed");
    }
}
