pragma solidity ^0.8.2;

contract mythlandMetadata {
    
    mapping(uint8 => address) armours;
    mapping(uint8 => address) bodies;
    mapping(uint8 => address) hands;
    mapping(uint8 => address) mainhands;
    mapping(uint8 => address) offhands;

    enum Traits{ body, armour, mainhand, offhand }

    string svgheader = "";
    string svgfooter = "";
    function setArmours(uint8 number, address add) public {
        armours[number] = add;
    }

    function setBodies(uint8 number, address add) public {
        bodies[number] = add;
    }

    function setHands(uint8 number, address add) public {
        hands[number] = add;
    }

    function setMainhands(uint8 number, address add) public {
        mainhands[number] = add;
    }

    function setOffhands(uint8 number, address add) public {
        offhands[number] = add;
    }


    function getSVG(uint8 body_, uint8 featA_, uint8 featB_, uint8 helm_, uint8 mainhand_, uint8 offhand_) public view returns(string memory) {

        return string(abi.encodePacked(
            svgheader,
            getTrait(Traits.body, body_), 
            getTrait(Traits.armour, featB_),
            getTrait(featA_),
            getTrait(Traits.helm, helm_),
            getTrait(Traits.offhand, offhand_),
            getTrait(Traits.mainhand, mainhand_),
            svgfooter ));
    }

    function getTrait()

    

    
    

}
