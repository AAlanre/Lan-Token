//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Script.sol";
import "../src/LanToken.sol";

contract DeployLanToken is  Script {
    function run() external {
        vm.startBroadcast();
        new LanToken(
            "LanToken",
            "LNT",
            1_000_000
        );
        vm.stopBroadcast();
    }
}