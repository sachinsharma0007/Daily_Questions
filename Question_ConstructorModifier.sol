// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Constructor_modifier{

    address public owner;

    // constructor() {
    //     owner = msg.sender;
    // }

    // uint public number;

    // constructor(uint _num) {
    //     number = _num;
    // }

    // string public name;
    // uint public age;

    // constructor(string memory _name, uint _age) {
    //     name = _name;
    //     age = _age;
    // }

    // address public owner;

    // constructor() {
    //     owner = msg.sender;
    // }

    // modifier onlyowner() {
    //     require(msg.sender == owner,"yor are not the owner");

    //     _;
    // }

    // function Withdraw() public onlyowner{
    // }

    // modifier Minimum_amount(uint amount) {
    //     require(amount > 100,"add more amount");
    //     _;
    // }

    // function Deposit(uint amount) public Minimum_amount(amount) {
    // }

    modifier OnlyEven(uint _num) {
        require(_num % 2 == 0,"Your number is not even");
        _;
    }

    function AddNumber(uint num) public OnlyEven(num) {
    }

    Pause/Unpause Contract
Create a contract with a modifier that prevents function execution when the contract is paused.
modifier whenNotPaused()
 
    modifier whenNotPaused()

}
