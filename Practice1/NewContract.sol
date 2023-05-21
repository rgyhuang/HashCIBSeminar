// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts@4.8.2/token/ERC20/ERC20.sol";

contract CMU2023_token is ERC20 {
    constructor() ERC20("CMU2023_test_token", "CMU2023") {
        _mint(msg.sender, 1000 * 10 ** decimals());
    }
}
