//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

// == visibility ==
// private = inside contract,
// internal = inside contract + derive,
// external = Outside only public
// public = everywhere

contract CallData {
    function foo(string memory str) public pure returns (string memory ) {
        str = "Foo bar";
        return str;
    }
}

contract A {

    event Log(uint , string );

    uint id;
    string str;
   // function foo() internal pure {}
//    function foo() external view {}
   // function bar() 
    function foo(uint _id, string memory _str) external  {
        id = _id;
        str = _str;
        emit Log(id, str);
    }
}

//contract B is A{
contract B{
    A a = new A();
   //  function bar() public pure{ 
    //function bar() external view{ 
       // foo();
        //a.foo();
    }
//}
