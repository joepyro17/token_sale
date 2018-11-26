pragma solidity ^0.4.23;

contract DappToken {
    //Name
    string public name = "DApp Token";

    //Symbol
    string public symbol = "DAPP";

    //Standard
    string public standard = "DApp Token v1.0";

    uint256 public totalSupply;

    event Transfer(
        address indexed _from,
        address indexed _to,
        uint256 _value
    );

    mapping(address => uint256) public balanceOf;

    // Under-score before variable means it's a local vairable
    // This vaiable will be passed from migration
    constructor(uint256 _initialSupply) public {
        balanceOf[msg.sender] = _initialSupply;
        totalSupply = _initialSupply;
        // Allocate the initial supply
    }

    // Transfer
    function transfer(address _to, uint256 _value) public returns (bool success){
        // Exception if account doesn't hae enough balance
        require(balanceOf[msg.sender] >= _value);
        
        // Transfer the balance
        balanceOf[msg.sender] -= _value;
        balanceOf[_to] += _value;
        
        // Transfer Event
        Transfer(msg.sender, _to, _value);

        // Return a boolean
        return true;   
    }


}