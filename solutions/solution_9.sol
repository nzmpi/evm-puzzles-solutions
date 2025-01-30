//SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

// @dev evm version has to be Paris!
contract Helper {
    function getValue() external pure returns (uint256 x) {
        bytes32 target = bytes32(uint256(0xa8));
        bytes32 y = keccak256(abi.encode(0)) >> 0xf8;
        while (y != target) {
            ++x;
            y = keccak256(abi.encode(x)) >> 0xf8;
        }
    }
}