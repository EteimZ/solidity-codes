pragma solidity 0.8.10;

// mapping example
contract MyContract {
    mapping(uint => int) public map;

    function setKey(uint key, int value) public {
        map[key] = value;
    }
}
