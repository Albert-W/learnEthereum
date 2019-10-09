pragma solidity ^0.5.0;

contract Calc{

  uint result;


  function add(uint a, uint b) public returns(uint){
    result = a + b;
    return result;
  }


  function getCount() public view returns (uint){
    return result;
  }
}