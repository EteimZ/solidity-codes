pragma solidity 0.8.10;


// Create contract called accountable
contract Accountable {

    // Define a mapping of type address to address
    mapping(address => address ) public accounts;
    // Define a mapping of type addres to address
    mapping(address => uint ) public balances;

    // Create function within the contract that enables the user to deposit ethers into the contract.
    function deposit(address person) external payable {
        accounts[msg.sender] = person;
        balances[person] += msg.value;
    }

    // Create function that enables the release of funds from the contract.
    // This function can't be used by the person who deposited the ether.
    function returnEth(address payable addrtopay) public payable{

        require(accounts[addrtopay] == msg.sender, "Wrong account");

        (bool sent, bytes memory _data) = addrtopay.call{value: balances[msg.sender] }("");
        require(sent, "could not withdraw!");
        balances[msg.sender] -= balances[msg.sender];
    }

    // Create function to get balance of contract.
    function getBalance() public view returns (uint){
        return address(this).balance;
    }
 
}
