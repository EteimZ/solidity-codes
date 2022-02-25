pragma solidity 0.8.10;

contract MyContract {
	// defining a public variable of type address
    address public lastSender;

	/* function recieves ethers and assigns
   	   lastsender to account that transfered ether */
    function recieve() external payable {
        lastSender = msg.sender;
    }

	// get current value
    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
}
