const { buildModule } = require("@nomicfoundation/hardhat-ignition/modules");

// const JAN_1ST_2030 = 1893456000;
// const ONE_GWEI = 1_000_000_000n;

module.exports = buildModule("MarketplaceModule", (m) => {
  // const unlockTime = m.getParameter("unlockTime", JAN_1ST_2030);
  // const lockedAmount = m.getParameter("lockedAmount", ONE_GWEI);

  // const lock = m.contract("Marketplace", [], {
  //   // value: lockedAmount,
  // });

  const marketplace = m.contract("NFTMarketplace");

  return { marketplace };
});
