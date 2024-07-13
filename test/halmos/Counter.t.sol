// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test} from "forge-std/Test.sol";
import {SymTest} from "halmos-cheatcodes/SymTest.sol";
import {Counter} from "src/Counter.sol";

contract CounterTestHalmos is Test, SymTest {
    Counter public counter;

    function setUp() public {
        counter = new Counter();
        counter.setNumber(0);
    }
    function testHalmos_Increment() public {
        counter.increment();
        assert(counter.number() == 1);
    }
}