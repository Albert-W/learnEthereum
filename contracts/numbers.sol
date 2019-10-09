pragma solidity ^0.5.0;

contract numbers {
    uint id = 5 ;
    // uint a = 1.5;

    ufixed b = 2.4; 

    function getnumber() public view returns (ufixed){
        return b;
    }
}

// fixed point number is Not yet implemented. 