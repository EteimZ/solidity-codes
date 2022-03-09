pragma solidity 0.8.10;

contract Voter {
    mapping (address => bool) private voter;
    mapping (uint => uint) private candidate;

    function vote( uint candidateId ) public {
        require(voter[msg.sender] != true , "You are not eligible to vote" );
        voter[msg.sender] = true;

        if (candidateId == 1) {
            candidate[1] += 1;
        }
        else if (candidateId == 2) {
            candidate[2] += 1;
        }
        else if (candidateId == 3) {
            candidate[3] += 1;
        }
        else {
            revert("Put in a valid id");
        } 
    }

    function getVote(uint candidateId) public view returns (int) {
        if (candidateId == 1) {
           return int(candidate[1]);
        }
        else if (candidateId == 2) {
            return int(candidate[2]);
        }
        else if (candidateId == 3) {
           return int(candidate[3]);
        }
        else {
            return -1;
        }
    }

}