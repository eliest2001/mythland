// SPDX-License-Identifier: Unlicense

//TODO: Cambiar funciones WrapTag, call, GetData
pragma solidity ^0.8.2;
import "hardhat/console.sol";
contract mythlandMetadata {

    mapping(uint8 => address) heads;
    mapping(uint8 => address) onehandarmours;
    mapping(uint8 => address) twohandarmours;
    mapping(uint8 => address) onehandbodies;
    mapping(uint8 => address) twohandbodies;
    mapping(uint8 => address) twohandweapons;
    mapping(uint8 => address) onehandweapons;
    mapping(uint8 => address) offhands;

    enum Traits{ head, body, armour, mainhand, offhand }

    string svgheader = '<?xml version="1.0" encoding="UTF-8" standalone="no"?><!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN" "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd"><svg version="1.1" id="Orc" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="512px" height="512px" viewBox="0 0 512 512" enable-background="new 0 0 512 512"  xml:space="preserve">';
    string svgfooter = "</svg>";

    function setOneHandArmours(uint8 number, address add) public {
        onehandarmours[number] = add;
    }

    function setTwoHandArmours(uint8 number, address add) public {
        twohandarmours[number] = add;
    }

    function setOneHandBodies(uint8 number, address add) public {
        onehandbodies[number] = add;
    }
    function setTwoHandBodies(uint8 number, address add) public {
        twohandbodies[number] = add;
    }
    function setHeads(uint8 number, address add) public {
        heads[number] = add;
    }

    function setOneHandWeapons(uint8 number, address add) public {
        onehandweapons[number] = add;
    }

    function setTwoHandWeapons(uint8 number, address add) public {
        twohandweapons[number] = add;
    }

    function setOffhands(uint8 number, address add) public {
        offhands[number] = add;
    }

    function getSVG(uint8 body_, uint8 head_, uint8 armour_, uint8 twohand_, uint8 onehand_, uint8 offhand_) public view returns(string memory) {

        if(twohand_ == 0){
            return string(abi.encodePacked(
                svgheader,
                getTrait(Traits.body, body_, false),
                getTrait(Traits.head, head_, false),
                getTrait(Traits.mainhand, onehand_, false),
                getTrait(Traits.armour, armour_, false),
                getTrait(Traits.offhand, offhand_, false),
                svgfooter ));
        }else{
            return string(abi.encodePacked(
                svgheader,
                getTrait(Traits.body, body_, true),
                getTrait(Traits.head, head_, true), 
                getTrait(Traits.mainhand, twohand_, true),
                getTrait(Traits.armour, armour_, true),
                svgfooter ));
        }

    }

    function getTrait(Traits trait, uint8 id, bool isTwoHanded) public view returns (string memory data) {

        address addr;
        if (trait == Traits.head){
            addr = heads[id];
        }
        else if (trait  == Traits.body){
            addr = isTwoHanded == true ? twohandbodies[id] : onehandbodies[id];
        }
        else if (trait == Traits.armour){
            addr = isTwoHanded == true ? twohandarmours[id] : onehandarmours[id];
        }
        else if (trait == Traits.offhand){
            addr = offhands[id];
        }
        else if (trait == Traits.mainhand){
            addr = isTwoHanded == true ? twohandweapons[id] : onehandweapons[id];
        }

        data = wrapTag(call(addr, getData(trait, id)));
       //
    }

    function wrapTag(string memory uri) internal pure returns (string memory) {
        return string(abi.encodePacked('<image x="0" y="0" width="512" height="512" image-rendering="pixelated" preserveAspectRatio="xMidYMid" xlink:href="data:image/png;base64,', uri, '"/>'));
    }

    function call(address source, bytes memory sig) internal view returns (string memory svg) {
        (bool succ, bytes memory ret)  = source.staticcall(sig);
        require(succ, "failed to get data");
        svg = abi.decode(ret, (string));
    }

   function getData(Traits trait, uint8 id) internal pure returns (bytes memory) {
        string memory s = string(abi.encodePacked(
            trait  == Traits.body    ? "body"     :
            trait == Traits.head     ? "head"     :
            trait == Traits.armour   ? "armour"   :
            trait == Traits.mainhand ? "mainhand" : "offhand",
            toString(id),
            "()"
        ));
        
        return abi.encodeWithSignature(s, "");
    }

    function toString(uint256 value) internal pure returns (string memory) {
        // Inspired by OraclizeAPI's implementation - MIT licence
        // https://github.com/oraclize/ethereum-api/blob/b42146b063c7d6ee1358846c198246239e9360e8/oraclizeAPI_0.4.25.sol

        if (value == 0) {
            return "0";
        }
        uint256 temp = value;
        uint256 digits;
        while (temp != 0) {
            digits++;
            temp /= 10;
        }
        bytes memory buffer = new bytes(digits);
        while (value != 0) {
            digits -= 1;
            buffer[digits] = bytes1(uint8(48 + uint256(value % 10)));
            value /= 10;
        }
        return string(buffer);
    }
    


    
    

}
