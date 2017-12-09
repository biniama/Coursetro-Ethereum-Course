pragma solidity ^0.4.18;

contract Coursetro {
    
    string fName;
    uint age;

    address owner;
    
    event Instructor(
       string name,
       uint age
    );
    
    function Coursetro() public {     // Add this constructor
        owner = msg.sender;
    }
    
    //if the condition is not true, throw an exception.
    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }
    
    function setInstructor(string _fName, uint _age) onlyOwner public {
       fName = _fName;
       age = _age;
       Instructor(_fName, _age);
    }
   
    function getInstructor() view public returns (string, uint) {
       return (fName, age);
    }
}