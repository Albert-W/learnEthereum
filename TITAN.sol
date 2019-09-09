pragma solidity ^0.5.0;

contract Titan {
    string[] public userList = [
        'id1',
        'id2',
        'id3'
    ];
    string[] leaveList;
    uint[] replist;
    uint[] eiglist;
    uint[][] repMatrix;
    mapping (string => string[]) providerDataList; 
    mapping (string => string[]) consumerDataList;
    mapping (string => uint) dataValue;

    function getlength() public view returns (uint){
        return userList.length;
    }

    function IndexOf(string memory uid) public view returns (int){
        uint i = 0;
        while(keccak256(bytes(userList[i])) != keccak256(bytes(uid)) ){
            i++;
            if(i == userList.length){
                return -1;
            }
        }
        return int(i);
    }

    function join(string memory uid) public {
        if(IndexOf(uid) == -1){
            userList.push(uid);
        }
    }
    function leave(string memory uid) public {
        if(IndexOf(uid) == -1){
            leaveList.push(uid);
        }
    }


}