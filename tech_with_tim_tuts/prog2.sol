pragma solidity 0.8.10;

contract MyContract {
    uint public x = 21;

    function setX(uint _x) public {
        x = _x;
    }
}
