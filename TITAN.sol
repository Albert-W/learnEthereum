pragma solidity ^0.5.0;

contract Titan {
    string[] public userList = [
        'id1',
        'id2',
        'id3'
    ];
    string[] public leaveList;
    uint[] public repList =[
        10,
        20,
        30
    ];
    uint[] public eigList = [
        13,
        25,
        34
    ];
    uint[][] public repMatrix= [
        [1,2,3],
        [3,4,6],
        [7,8,9]
    ];
    mapping (int => string[]) public providerDataList;
    mapping (int => string[]) public consumerDataList;
    mapping (string => uint) public dataValue;

    function getlength() public view returns (uint){
        return userList.length;
    }

    function indexOf(string memory uid) public view returns (int){
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
        uint l = userList.length;
        if(indexOf(uid) == -1){
            userList.push(uid);
            repList.length = l+1;
            eigList.length = l+1;
            repMatrix.length = l+1;
        }
        for(uint i = 0;i<l+1;i++){
            repMatrix[i].length = l+1;
        }
    }
    function leave(string memory uid) public {
        if(indexOf(uid) == -1){
            leaveList.push(uid);
        }
    }
    function getRep(string memory uid) public view returns (uint) {
        int i = indexOf(uid);
        if(i == -1) return 0;
        return repList[uint(i)];
    }
    function getEig(string memory uid) public view returns (uint) {
        int i = indexOf(uid);
        if(i == -1) return 0;
        return eigList[uint(i)];
    }
    function _setDataValue(string memory k, uint v) public {
        dataValue[k] = v;
    }
    function _setProviderDataList(int i, string memory k) public {
        providerDataList[i].push(k);
    }
    function _setRepMatrix(int i,int j, uint v) public {
        repMatrix[uint(i)][uint(j)] += v;
    }


    function updataRep(string memory k, uint v, string memory uid1, string memory uid2) public {
        int i = indexOf(uid1);
        int j = indexOf(uid2);
        dataValue[k] = v;
        providerDataList[i].push(k);
        consumerDataList[j].push(k);
        repMatrix[uint(i)][uint(j)] += v;
        repList[uint(i)] += v;
    }

    function offloadRep() public view returns(uint[] memory){
        uint l = repMatrix.length;
        uint[] memory list;
        list = new uint[](l*l);
        for(uint i = 0;i<l; i++){
            for(uint j = 0;j<l; j++){
                list[i*l + j] = repMatrix[i][j];
            }
        }
        return list;
    }

    function update (uint[] memory eigTrustRes) public{
        eigList = eigTrustRes;
    }
}