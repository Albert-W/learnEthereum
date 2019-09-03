pragma solidity ^0.5.0;
// pragma experimental ABIEncoderV2;

contract intArrays {
    uint[] public myArrays;
    uint id =0;

    function addtoArray(uint i) public {
        // push is essential, index donot work when it's dynamic. 
        // myArrays[id] = i; 
        myArrays.push(i);
        id++;
    }
    
    function indextoValue(uint i) public view returns (uint ) {
        return myArrays[i];
    }

    function getArray() public view returns (uint[] memory){
        return myArrays;
    }

}

// all the functions pass test. 