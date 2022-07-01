// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "src/10Reentrancy.sol";

contract EnterTest is Test {
    Enterrr enter;
    function setUp() public {
        enter = new Enterrr();
    }

   function testCheckEnter() public {
        emit log_named_uint("Balance before", address(enter.re()).balance);
        enter.enterAndDrain{value: 0.0001 ether}();
        emit log_named_uint("Balance after", address(enter.re()).balance);
        assertEq(address(enter.re()).balance, 0);
   }
}