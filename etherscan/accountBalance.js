const axios = require("axios");
require("dotenv").config();

const ETHERSCAN_API_KEY = process.env.ETHERSCAN_API_KEY;

const getBalance = async () => {
  const res = await axios.get(`https://api.etherscan.io/api
    ?module=account
    &action=balance
    &address=0xde0b295669a9fd93d5f28d9ec85e40f4cb697bae
    &tag=latest
    &apikey=${ETHERSCAN_API_KEY}`);
  console.log(res);
};

getBalance();
