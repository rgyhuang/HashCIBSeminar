// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract Counter {
  uint public count = 0;

  function incrementCount() public {
    count = count ++;
  }

}