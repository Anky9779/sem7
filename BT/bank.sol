pragma solidity ^0.8.4; 

contract Bank { 
mapping(address => uint) balance;
address owner; 
constructor() { 
owner = msg.sender; 

} 

function addBalance(uint _toAdd) public returns(uint) {
 require(msg.sender == owner,"not the owner");
 balance[msg.sender] += _toAdd; 
 return balance[msg.sender]; 
} 

function getBalance() public view returns(uint) {
 return balance[msg.sender]; 
} 


function Withdraw(uint _tosub) public returns(uint) {
 require(msg.sender == owner,"not the owner");
 balance[msg.sender] -= _tosub; 
} 

}
