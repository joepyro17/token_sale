var DappToken = artifacts.require("./DappToken.sol");

// Pass 1000000 tokens to DappToken smart contract
module.exports = function(deployer) {
  deployer.deploy(DappToken, 1000000);
};