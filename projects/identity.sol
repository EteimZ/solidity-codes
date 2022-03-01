//create a contract

//store name, age, nationality in a constructor


pragma solidity 0.8.10;

contract NationalIdentity {

    struct Identity { 
        string name;
        uint  age;
        string nationality;
}

  Identity identity;


    constructor(string memory _name, uint _age, string memory _nationality)  {
         identity = Identity(_name, _age, _nationality );
   }

    function getIdentity() public view returns (string memory , uint , string memory ) {
      return (identity.name, identity.age, identity.nationality);
   }

}
