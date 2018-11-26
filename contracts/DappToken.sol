pragma solidity ^0.4.23;

contract DappToken {
    //Name
    string public name = "DApp Token";

    //Symbol
    string public symbol = "DAPP";

    //Standard
    string public standard = "DApp Token v1.0";

    uint256 public totalSupply;


    mapping(address => uint256) public balanceOf;

    // Under-score before variable means it's a local vairable
    // This vaiable will be passed from migration
    constructor(uint256 _initialSupply) public {
        balanceOf[msg.sender] = _initialSupply;
        totalSupply = _initialSupply;
        // Allocate the initial supply
    }


}