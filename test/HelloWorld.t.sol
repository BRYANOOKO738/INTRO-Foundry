// SPDX-License-Identifier:MIT

pragma solidity ^0.8.13;

import {HelloWorld} from "../src/HelloWorld.sol";
import {Test, console} from "forge-std/Test.sol";

contract HelloWorldTest is Test {
    HelloWorld public helloWorld;

    function setUp() external {
        helloWorld = new HelloWorld();
    }

    function testGreet() public view {
        assertEq(helloWorld.greet(), "HelloWorld");
    }
}
