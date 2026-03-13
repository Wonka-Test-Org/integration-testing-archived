// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract SimpleStorage {
    uint256 private value;
    address public owner;

    event ValueUpdated(uint256 oldValue, uint256 newValue);

    constructor(uint256 initialValue) {
        value = initialValue;
        owner = msg.sender;
    }

    function getValue() public view returns (uint256) {
        return value;
    }

    function setValue(uint256 newValue) public {
        uint256 oldValue = value;
        value = newValue;
        emit ValueUpdated(oldValue, newValue);
    }

    function increment() public {
        uint256 oldValue = value;
        value += 1;
        emit ValueUpdated(oldValue, value);
    }
}
