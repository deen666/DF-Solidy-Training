//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Arrays {
    uint[] number1 = [1,2,3];
    uint[3] number2;

    function showNumber1() public returns (uint [] memory) {
        number1.push(4);
        delete number1[3];
        number1.push(5);
        return number1;
    }

}
