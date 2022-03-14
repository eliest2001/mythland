const hre = require("hardhat")
const fs = require('fs');
const puppeteer = require('puppeteer');

async function main() {

      // Preparar contratos
      const Metadata = await ethers.getContractFactory("mythlandMetadata");
      const OHArmours = await ethers.getContractFactory("onehandarmours");
      const THArmours= await ethers.getContractFactory("twohandarmours");
      const OHBodies = await ethers.getContractFactory("onehandbodies");
      const THBodies = await ethers.getContractFactory("twohandbodies");
      const Heads = await ethers.getContractFactory("heads");
      const OHWeapons = await ethers.getContractFactory("onehandweapons");
      const THWeapons = await ethers.getContractFactory("twohandweapons");
      const Offhands = await ethers.getContractFactory("offhands");
      console.log("Contratos Preparados");
      // Lanzar contrato
      const Metadatadep = await Metadata.deploy();
      const OHArmoursdep = await OHArmours.deploy();
      const THArmoursdep = await THArmours.deploy();
      const OHBodiesdep = await OHBodies.deploy();
      const THBodiesdep = await THBodies.deploy();
      const Headsdep = await Heads.deploy();
      const OHWeaponsdep = await OHWeapons.deploy();
      const THWeaponsdep = await THWeapons.deploy();
      const Offhandsdep = await Offhands.deploy();
      console.log("Contratos Lanzados");
      // Preparar direcciones linkeadas a los base64
      await Metadatadep.setOneHandArmours(1,OHArmoursdep.address);
      await Metadatadep.setOneHandArmours(2,OHArmoursdep.address);
      await Metadatadep.setOneHandArmours(3,OHArmoursdep.address);
      await Metadatadep.setTwoHandArmours(1,THArmoursdep.address);
      await Metadatadep.setOneHandBodies(1,OHBodiesdep.address);
      await Metadatadep.setTwoHandBodies(1,THBodiesdep.address);
      await Metadatadep.setHeads(1,Headsdep.address);
      await Metadatadep.setHeads(2,Headsdep.address);
      await Metadatadep.setHeads(3,Headsdep.address);
      await Metadatadep.setHeads(4,Headsdep.address);
      await Metadatadep.setOneHandWeapons(1,OHWeaponsdep.address);
      await Metadatadep.setOneHandWeapons(2,OHWeaponsdep.address);
      await Metadatadep.setTwoHandWeapons(1,THWeaponsdep.address);
      await Metadatadep.setOffhands(1,Offhandsdep.address);
      await Metadatadep.setOffhands(2,Offhandsdep.address);
      await Metadatadep.setOffhands(3,Offhandsdep.address);
      console.log("Direcciones Linkeadas");
      // Lanzar el svg
      const svg = await Metadatadep.getSVG(1, 3, 1, 1, 0, 0);
      //const body = await Metadatadep.getBody()

      fs.writeFileSync('mysvg.svg', svg, function (err) {
         if (err) throw err;
      });
      const browser = await puppeteer.launch({ headless: false })   
      const page1 = await browser.newPage();  
      await page1.goto("C:\\Users\\elias\\Documents\\Programacion\\MythLand\\mysvg.svg");
      await delay(30000000);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });

  const delay = ms => new Promise(resolve => setTimeout(resolve, ms))
