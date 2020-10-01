var ABSToken = artifacts.require("./ABSToken.sol");
module.exports = function(deployer) {
  deployer.deploy(ABSToken);
};
