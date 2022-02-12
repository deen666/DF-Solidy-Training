//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Arrays {
    uint [] public number = [1,2,3];

    function showNumber() public returns (uint , uint) {
        uint [] storage num_storage = number;
        num_storage[2] = 4;
        uint [] memory num_memory = number;
        num_memory[2] = 5;
        return (num_storage[1], num_memory[2 ]);
    }
}
