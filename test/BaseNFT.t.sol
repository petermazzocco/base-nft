// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "../lib/forge-std/src/Test.sol";
import {BaseNFT} from "../src/BaseNFT.sol";

contract BaseNFTTest is Test {
    BaseNFT baseTest;
    string public baseURI = "https://example.com/";
    address public to = address(0x56C33325b71d97951C85397E1Bf32aF3bB45f74a);

    function setUp() public {
        // Constructor arguments
        baseTest = new BaseNFT("Test", "TST", baseURI);
    }

    function testMint() public {
        // Deal 1 ether to address
        vm.deal(to, 1 ether);
        // Mint with 0.01 Ether
        baseTest.mint{value: 0.01 ether}(to, 1);
    }
}
