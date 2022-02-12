//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract StructEnum {
    struct Employee { uint id; string name; }
    Employee emp1 = Employee(1, "John");
    Employee emp2 = Employee({id: 2, name:"Jack"});

    enum Color { RED, GREEN }

    mapping( address => Employee ) emps;

    function addEmployee(uint id, string memory name) public {
        emps[0x5B38Da6a701c568545dCfcB03FcB875f56beddC4] = Employee(id, name);

    }

    function getColor() public pure returns ( Color ) {
        return Color.RED;
    }
}
