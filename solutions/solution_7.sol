//SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Test {
    function getBytecode() external pure returns (bytes memory) {
        return type(Target).creationCode;
    }
}

contract Target {
    constructor() payable {
        assembly {
            return(0, 1)
        }
    }
}