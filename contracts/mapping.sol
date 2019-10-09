pragma solidity ^0.5.0;

contract ReturnMapping {
    mapping(address => uint) public myMapping;
    uint id =0;

    function addtomap(address name) public {
        myMapping[name] = id;
        id++;
    }
    
    // return mapping is impossible. 
    //ideal solution 
    function returnMapping() public view returns (mapping) {
        return myMapping;
    }  
}