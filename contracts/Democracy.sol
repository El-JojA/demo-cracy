/**
    The aim of this contract is to simulate a little bit of democracy.
    Where everybody (address) have the same right to vote and every vote
    have the same weight.
*/
pragma solidity ^0.4.15;


contract Democracy {

    // mapping(Law.address, [voter, vote(+1/0/-1)])
    struct vote {
        int8 voteType;
        bool isValid;
    }

    mapping (address=>mapping (address=>vote)) votes;
    uint256 democracyStartDate;
    string democracyName;

    enum LawStatus { Invote, Passed, Denied }
    enum VoteType { Null, No, Yes  }

    modifier castedVote(address _law) {
        require(votes[_law][msg.sender].isValid == false);
        _;
    }

    function Democracy(string _democracyName) public {
        democracyName = _democracyName;
        democracyStartDate = now;
    }

    //I saw a need for 3 different functions to avoid exploits on sending a not permited parameter.
    //Probably there is a clever way of doing this, if you know it please fix this. It's 3AM and I should be sleeping to wake up at least at 7AM. 
    function voteYes(address _law) public castedVote(_law) {
        votes[_law][msg.sender].voteType = 1;
    }


    function voteNo(address _law) public castedVote(_law) {
        votes[_law][msg.sender].voteType = -1;
    }


    function voteNull(address _law) public castedVote(_law) {
        votes[_law][msg.sender].voteType = 0;
    }

}
