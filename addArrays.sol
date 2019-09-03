pragma solidity ^0.5.0;

contract addressArrays {
    address[] public myArrays;
    uint id =0;

    function addtoArray(address name) public {
        myArrays.push( name);
        id++;
    }
    
    function indextoValue(uint i) public view returns (address ) {
        return myArrays[i];
    }

    // return address[] is only supported in the new experimental ABI encoder.
    function getArray() public view returns (address[] memory){
        return myArrays;
    } 
}

// all the functions pass test 