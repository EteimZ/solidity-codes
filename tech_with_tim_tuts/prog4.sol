pragma solidity 0.8.10;

contract MyContract {

	// function to accept ethers for the contract
    function recieve() external payable {}
	
	// function to get current balance of the contract
    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
}
