// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;
contract SimpleStudent{
    string public _string = "Hello Web3!";
    uint public myNumber;

    struct Student {
        uint256 id;
        string name;
    }

    Student[] students;

    mapping(uint256 => string) idToName;

    function store(uint256 _num) public returns(uint) {
        myNumber = _num;
        return myNumber;
        // myNumber = myNumber + 1;
    }

    function addStudent(uint256 _id, string memory _name) public {
        idToName[_id] = _name;
        students.push(Student(_id, _name));
    }
}