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
            // push aa
            // push 05
            // sstore
            mstore(0, 0x60aa600555)
            return(27, 5)
        }
    }
}