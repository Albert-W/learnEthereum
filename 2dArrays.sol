pragma solidity ^0.5.0;
pragma experimental ABIEncoderV2;

contract twoDArrays {
    uint[][] public myArrays;
    uint id =0;

    function addtoArray(uint[] memory l) public {
        myArrays.push(l);
        id++;
    }
    
    function indextoValue(uint i) public view returns (uint[] memory ) {
        return myArrays[i];
    }

    // return uint[][] is only supported in the new experimental ABI encoder.
    function getArray() public view returns (uint[][] memory){
        return myArrays;
    } 
}

// all the functions pass the test. 
