pragma solidity ^0.4.18;



contract KingOfTheHill {
    
    struct King {
        uint256 start;
        bytes16 fName;
        
    }
    
    mapping (address => King) kings;
    address[] public kingAccts;
    
    event kingInfo(
       bytes16 fName,
       uint256 start
    );
    
    function setKing(address _address, uint _start, bytes16 _fName) public {
        var king = kings[_address];
        king.start = _start;
        king.fName = _fName;
        
        kingAccts.push(_address) -1;
        kingInfo(_fName, _start);
    }
    
    function getKings() view public returns(address[]) {
        return kingAccts;
    }
    
    function getKing(address _address) view public returns (uint, bytes16) {
        return (kings[_address].start, kings[_address].fName);
    }
    
    function countKings() view public returns (uint) {
        return kingAccts.length;
    }
    
}
