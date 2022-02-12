//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


contract Origin {
    function getAddress() public view returns ( address, address ) {
        return (tx.origin, msg.sender);
    }
}


contract Second {
    Origin org;
    address public owner;

    modifier onlyOwner() {
        require( msg.sender == owner, "Must be an owner");
        _;
    }

    constructor(address _org) {
        org = Origin(_org);
        owner = msg.sender;
    }

    function getAddressOrigin() public view returns (address, address) {
        return org.getAddress();
    }

    function getAddress() public view returns ( address, address) {
        return (tx.origin, msg.sender);
    }

}
