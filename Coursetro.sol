pragma solidity ^0.4.18;

contract Coursetro {

    string fName;

    // doesn't need to be set in constructor
    string constant mName = 'Asnake';

    string public lName;

    uint age;

    //constructor
    function Coursetro() public {
        fName = 'Biniam';
        lName = 'Kefale';
        age = 29;
    }

    function setInstructor(string _fName, uint _age) public {
        fName = _fName;
        age = _age;
    }

    function getInstructor() public constant returns (string, uint) {
        return (fName, age);
    }
}