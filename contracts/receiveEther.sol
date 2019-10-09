pragma solidity ^0.5.0;

contract receiveEther {
    uint id = 0 ;

    function () external payable  {
        id = msg.value;
    }

    function getnumber() public view returns (uint){
        return id;
    }
}