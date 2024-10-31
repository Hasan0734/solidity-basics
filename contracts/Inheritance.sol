// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract A {
    function foo() public pure virtual returns (string memory){
        return "A1";
    }
     function bar() public pure virtual  returns (string memory){
        return "A2";
    }

    // more code here

    function baz() public pure virtual  returns (string memory){
        return "A3";
    }
}


contract B is A {
      function foo() public pure override  returns (string memory){
        return "B1";
     }
     function bar() public pure virtual override  returns (string memory){
        return "B2";
     }

    // more code here
}

contract C is B {
   function bar() public pure override returns (string memory){
        return "C1";
     }
}
