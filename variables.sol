//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

// contract
contract Variables {
    bool isDone = false;
    uint immutable public ui;
    uint i; // unit8 - uint256
    address owner = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    string name;
    bytes data;
    uint[] user;
    mapping (address => uint) balances;

    constructor(uint _ui) {
        ui = _ui;
    }
}

