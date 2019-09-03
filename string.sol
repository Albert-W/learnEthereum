pragma solidity ^0.5.0;

contract ReturnString {
    string mystring;
    uint id =0;

    function set(string memory name) public {
        mystring = name;
    }
    
    function get() public view returns (string memory ) {
        return mystring;
    }
 
}

// All the functions pass test. 