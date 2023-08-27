// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleContract {
    uint public uintVariable;
    string public stringVariable;
    bool public boolVariable;
    address public addressVariable;

    constructor() {
        // Initialize variables in the constructor if needed
        uintVariable = 0;
        stringVariable = "";
        boolVariable = false;
        addressVariable = address(0);
    }

    // Set functions
    function setUint(uint _value) public {
        uintVariable = _value;
    }

    function setString(string memory _value) public {
        stringVariable = _value;
    }

    function setBool(bool _value) public {
        boolVariable = _value;
    }

    function setAddress(address _value) public {
        addressVariable = _value;
    }

    // Get functions (returning the value set in the set functions)
    function getUint() public view returns (uint) {
        return uintVariable;
    }

    function getString() public view returns (string memory) {
        return stringVariable;
    }

    function getBool() public view returns (bool) {
        return boolVariable;
    }

    function getAddress() public view returns (address) {
        return addressVariable;
    }
}
