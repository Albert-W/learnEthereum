pragma solidity ^0.5.0;
// pragma experimental ABIEncoderV2;

contract twoDArrays {
    uint[][] public myArrays = [
        [1,2],
        [3,4]
    ] ;
    uint[] public myList=[
        15,
        20
    ];
    // uint id =0;

    function addtoArray(uint[] memory l) public {
        myArrays.push(l);
        // id++;
    }
    
    function indextoValue(uint i) public view returns (uint[] memory ) {
        return myArrays[i];
    }

    // amplify the matrix to l * l ;
    function amplify(uint l) public {
        myArrays.length = l;
        for(uint a =0;a < l; a++){
            myArrays[a].length =l;
        }
    }

    // change it to one dimensional array 
    function offloadRep() public view returns(uint[] memory){
        uint l = myArrays.length;
        uint[] memory list;
        list = new uint[](l*l);
        for(uint i =0;i<l; i++){
            for(uint j =0;j<l; j++){
                list[i*l +j] = myArrays[i][j];
            }
        }
        return list;        
    }

    function setList(uint[] memory newList) public {
        myList = newList;
    }

    // return uint[][] is only supported in the new experimental ABI encoder.
    // function getArray() public view returns (uint[][] memory){
    //     return myArrays;
    // } 

}

// all the functions pass the test. 
