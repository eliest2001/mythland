pragma solidity ^0.8.4;

// contract Deployed {
    
//     function mynumber() public pure returns (uint) {}
    
// }
contract example2 {
    uint public number;
    address ext;

    function setAddr(address add) public{
        ext = add;
    }

    function setNumber() public{
        bool status;
        bytes memory result;
        (status, result) = ext.call(abi.encodePacked(bytes4(keccak256("mynumber()"))));
        number = abi.decode(result, (uint));
    }
//require(dc.call(bytes4(keccak256("setA(uint256)")),_val));

}