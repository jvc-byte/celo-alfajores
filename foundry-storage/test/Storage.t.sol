// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Storage} from "../src/Storage.sol";

contract StorageTest is Test {
    Storage public storageContract;

    function setUp() public {
        storageContract = new Storage();
    }

    function test_InitialValueIsZero() public view {
        assertEq(storageContract.retrieve(), 0);
    }

    function test_StoreValue() public {
        storageContract.store(42);
        assertEq(storageContract.retrieve(), 42);
    }

    function testFuzz_Store(uint256 x) public {
        storageContract.store(x);
        assertEq(storageContract.retrieve(), x);
    }
}
