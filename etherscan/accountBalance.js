const axios = require("axios");
require("dotenv").config();

const ETHERSCAN_API_KEY = process.env.ETHERSCAN_API_KEY;

const etherscan = `https://api.etherscan.io/api?apikey=${ETHERSCAN_API_KEY}`;

const address = "0xde0b295669a9fd93d5f28d9ec85e40f4cb697bae";
const multipleAddress =
  "0xddbd2b932c763ba5b1b7ae3b362eac3e8d40121a,0x63a9975ba31b0b9626b34300f7f627147df1f526,0x198ef1ec325a96cc354c7266a038be8b5c558f67";

const getBalance = async () => {
  const res = await axios.get(
    `${etherscan}&module=account&action=balance&address=${address}&tag=latest`
  );
  console.log(res.data);
};

const getBalanceOfMultipleAddress = async () => {
  const res = await axios.get(
    `${etherscan}&module=account&action=balancemulti&address=${multipleAddress}&tag=latest`
  );
  console.log(res.data);
};

// getBalance();
getBalanceOfMultipleAddress();
