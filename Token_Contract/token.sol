// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;


contract Token {

    // Variables
    string public tokenName="Taylor";
    string public tokenSymbol="ABC";
    uint256 public totalSupply=0;

    // Mapping
    mapping(address => uint256) public balances;


    // Minting Function
    function mint(address _to, uint256 _value) external {
        require(_to != address(0),"invalid address);
        totalSupply += _value;
        balances[_to] += _value;
    }

    // Burning Function
    function burn(uint256 _value) external {
        totalSupply -= _value;
        balances[msg.sender] -= _value;
    }

}
