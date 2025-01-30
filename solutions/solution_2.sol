//SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

// @dev evm version has to be Paris!
contract Helper {
    function getBytecode() external pure returns (bytes memory) {
        return type(Target).creationCode;
    }
}

contract Target {
    constructor() payable {
        assembly {
            // push 0a
            // push 00
            // return
            mstore(0, 0x600a6000f3)
            return(27, 5)
        }
    }
}