//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Calculator {
    function add(uint x,uint y) public pure returns (uint z) {
        z =  x + y;
    }
    function minus(uint x,uint y) public pure returns (int z) {
        z =  int(x) + int(y);
    }
    function mul(uint x,uint y) public pure returns (uint z) {
        return x*y;
    }
    function div(uint x,uint y) public pure returns (uint) {
        return x/y;
    }
}

