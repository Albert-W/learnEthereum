pragma solidity ^0.5.0;

contract numbers {
    
    uint id = 5 ;
    fixed a = 1.5;
    ufixed b = 2.4; 

    function getnumber() public view returns (fixed){
        return a;
    }
}

// all the functions pass test 