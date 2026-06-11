// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Mapping_Practice{


    mapping(address => uint) public age;

    function setAge(uint _age) public {
        age[msg.sender] = _age;
    }

    function getAge(address student) public view returns(uint) {
        return age[student];
    }

    mapping (address => uint ) public balances;

    function Deposit(uint amount) public {
        balances[msg.sender] = amount;
    }

    function GetBalance(address user) public view returns(uint) {
        return balances[user];
    }

    mapping (address =>bool) public registration;

    function registerUser() public {
        registration[msg.sender] = true;
    }

    function Check_registration(address ID) public view returns(bool) {
        return registration[ID];
    }

    mapping (uint => uint) public salary;

    function SetSalary (uint ID, uint _Salary) public {
        salary[ID] = _Salary;
    }

    function UpdateSalary (uint ID, uint _salary) public {
        salary[ID] = _salary;
    }
    function GetSalary (uint ID) public view returns (uint) {
        return salary[ID];
    }

    mapping (uint => uint) public productPrice;

    function addProduct(uint ID, uint Price) public {
        productPrice[ID] = Price;
    }

    function UpdatePrice (uint ID, uint Price) public {
        productPrice[ID] = Price;
    }

    function GetPrice (uint ID) public view returns(uint) {
        return productPrice[ID];
    }

    mapping (address => bool) public hasVoted;

    function Vote() public {
        require (hasVoted[msg.sender] == false, "you already voted");
        hasVoted[msg.sender] = true; 
    }

    function Voting_Status(address Voter_address) public view returns(bool) {
        return hasVoted[Voter_address];
    }

    struct Student{
        
        string name;
        uint marks;
    }

    mapping (uint => Student) Students;

    function addStudent(uint Roll_no, string memory _name, uint _marks) public {
        Students[Roll_no] = Student(_name, _marks);
    }

    function GetStudent_details(uint Roll_no) public view returns (string memory, uint) {
        return (Students[Roll_no].name, Students[Roll_no].marks);   
    }



    
}
