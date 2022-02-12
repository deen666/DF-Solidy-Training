//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

// contract
contract Counter {
    uint count;

    function add() public {
        ++count;
    }

    function getCount() public view returns (uint ) {
        return count;
    }

    function foo(uint x) public pure returns (uint ) {
        return 1+x;
    }
}

