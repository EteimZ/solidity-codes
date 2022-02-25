pragma solidity 0.8.10;

// Bank example 
contract MyContract {
    mapping(address => uint ) private balances;

    function deposit() external payable {
        balances[msg.sender] += msg.value;
    }

    function withdraw(address payable addr, uint amount) public payable{
        require(balances[addr] >= amount, "Insufficient funds.");
        (bool sent, bytes memory data) = addr.call{value: amount}("");
        require(sent, "could not withdraw!");
        balances[msg.sender] -= amount;
    }

    function getBalance() public view returns (uint){
        return address(this).balance;
    }


}
