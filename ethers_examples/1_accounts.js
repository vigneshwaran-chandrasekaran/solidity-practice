const { ethers } = require("ethers");
require("dotenv").config();

const INFURA_ID = process.env.INFURA_API_KEY;

const address = "0x73BCEb1Cd57C711feaC4224D062b0F6ff338501e";
const address_one = "0x679688540a567be87625bEEf0BBAB7e37F704A46";

const provider = new ethers.providers.JsonRpcBatchProvider(
  `https://mainnet.infura.io/v3/${INFURA_ID}`
);

const main = async (adrs) => {
  const balance = await provider.getBalance(adrs);

  console.log(
    `\nETH Balance of ${adrs} --> ${ethers.utils.formatEther(balance)} ETH\n`
  );
};

main(address);
main(address_one);
