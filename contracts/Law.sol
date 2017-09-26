/**
    The aim of this contract is to simulate a little bit of democracy.
    Where everybody (address) have the same right to vote and every vote
    have the same weight.
*/
pragma solidity ^0.4.15;


contract Law {
    string public name;
    string public description;
    address public creator;
    uint public creationDate;
    uint public closingDate; // Ending date of the voting period.
    uint constant private VOTING_PERIOD = 7 days;

    function Law (string _name, string _description) public { 
        name = _name;
        description = _description;
        creator = msg.sender;
        creationDate = now;
        closingDate = now + VOTING_PERIOD;
    }

}
