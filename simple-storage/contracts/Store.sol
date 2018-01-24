pragma solidity ^0.4.17;

contract SimpleStorage {
  event Odd();
  event Even();

  uint myVariable;

  function set(uint x) public {
    myVariable = x;

    if (x % 2 == 0) {
      Even();
    } else {
      Odd();
    }
  }

  function get() constant public returns (uint) {
    return myVariable;
  }
}
