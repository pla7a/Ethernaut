// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "src/21Shop.sol";

contract BuyerTest is Test {
    Buyer buyer;

    function setUp() public {
        buyer = new Buyer();
    }

   function testFailCheckGas() public {
    uint256 gas = buyer.price();
    buyer.buy();
    emit log_named_uint("Gas remaining", gas);
    

    uint256 gas1 = buyer.price();
    emit log_named_uint("Gas remaining1", gas1);
    assertEq(gas, 1);
   }
}