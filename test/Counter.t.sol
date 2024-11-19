// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Counter} from "../src/Counter.sol";

contract CounterTest is Test {
    Counter public Hello;

    function setUp() external {
        Hello = new Counter();
        
    }

    function testInc() public {
        Hello.inc();
        Hello.inc();
        assertEq(Hello.count(), 2);
    }

    function TestDecFail() external {
        Hello.inc();
    }
}
