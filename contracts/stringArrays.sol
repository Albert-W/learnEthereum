pragma solidity ^0.5.0;
pragma experimental ABIEncoderV2;

contract stringArrays {
    string[] public myArrays;
    uint id =0;

    function addtoArray(string memory name) public {
        myArrays.push( name);
        id++;
    }
    
    function indextoValue(uint i) public view returns (string memory ) {
        return myArrays[i];
    }

    // return string[] is only supported in the new experimental ABI encoder.
    function getArray() public view returns (string[] memory){
        return myArrays;
    } 
}

// all the functions pass test only with ABIEncoderV2. 