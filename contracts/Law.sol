/**
    The aim of this contract is to simulate a little bit of democracy.
    Where everybody (address) have the same right to vote and every vote
    have the same weight.
*/
pragma solidity ^0.4.15;


contract Law {
    string public name;
    string description;
    address creator;
    
    function Law (string _name, string _description) public { 
        name = _name;
        description = _description;
        creator = msg.sender;
    }
    
    function getName() public constant returns(string) {
        return name;
    }
    
    function getDescription() public constant returns(string) {
        return description;
    }
    
    function getCreator() public constant returns(address) {
        return creator;
    }
    
}
