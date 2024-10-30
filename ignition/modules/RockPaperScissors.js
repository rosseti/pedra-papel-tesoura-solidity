// ./ignition/modules/RockPaperScissors.js
const { buildModule } = require("@nomicfoundation/hardhat-ignition/modules");

module.exports = buildModule("RockPaperScissorsModule", (m) => {

  const rockPaperScissors = m.contract("RockPaperScissors", [], {});

  return { rockPaperScissors };
});