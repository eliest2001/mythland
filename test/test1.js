const {expect} = require("chai");
const { ethers } = require("hardhat");

describe("Expample contract", function () {
    it("Should be equal to one", async function () {
      const [owner] = await ethers.getSigners();
  
      const Example = await ethers.getContractFactory("example");
  
      const ExampleNumber = await Example.deploy();
  
      const ownerBalance = await ExampleNumber.mynumber();
      expect(1).to.equal(ownerBalance);
    });

    it("Should return 1 from contract 2", async function () {
      const [owner] = await ethers.getSigners();

      const Example = await ethers.getContractFactory("example");
      const Example2 = await ethers.getContractFactory("example2");

      const Exampledep = await Example.deploy();
      const Example2dep = await Example2.deploy();

      await Example2dep.setAddr(Exampledep.address)
      await Example2dep.setNumber()
      const number = await Example2dep.number()
 
      expect(1).to.equal(number);


    });
  });