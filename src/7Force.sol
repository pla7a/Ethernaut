// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Die {
    function depositAndDie() payable public {
        address payable addr = payable(0xD95855C78451D3D7181fE9d3CDd1B0a3d44b8e4d);
        selfdestruct(addr);
    }
}
