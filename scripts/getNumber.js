const hre = require("hardhat")

async function main() {
        const Example = await ethers.getContractFactory("example");
      const Example2 = await ethers.getContractFactory("example2");

      const Exampledep = await Example.deploy();
      const Example2dep = await Example2.deploy();

      await Example2dep.setAddr(Exampledep.address)
      await Example2dep.setNumber()
      const number = await Example2dep.number()
      console.log(number.toNumber())
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });