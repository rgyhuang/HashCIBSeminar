// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;
contract MyContract {
  // state variable, stored permanently in blockchain
  uint public myUint = 1;
  string public myString = "Hello, world!";
  bytes32 public myBytes32 = "Hello, world!";
  int public myInt = 1;
  uint256 public myUint256 = 1;
  uint8 public myUint8 = 1;
  // address type is for Ethereum addresses
  address public myAddress = 0x5A0b54D5dc17e0AadC383d2db43B0a0D3E029c4c;

  function getValue() public pure returns(uint) {
    // local variable, stored in memory
    uint value = 1;
    return value;
  }

  struct MyStruct {
    uint myuint;
    string myString;
  }

  MyStruct public myStruct = MyStruct(1, "Hello, world!");

  // arrays 
  uint [] public uintArray = [1,2,3];
  string [] public stringArray = ['apple', 'banana', 'carrot'];
  string [] public values;
  function valueCount(string memory _value) public {
    values.push(_value);
  }

  function valueCount() public view returns(uint) {
    return values.length;
  }

  // mappings 
  mapping(uint => string) public names;

  struct Book {
    string title;
    string author;
  }

  mapping(uint => Book) public books;

  function addBook(uint _id, string memory _title, string memory _author) public {
    books[_id] = Book(_title, _author);
  }

  mapping(address => mapping(uint => Book)) public myBooks;

  function addMyBook(uint _id, string memory _title, string memory _author) public {
    myBooks[msg.sender][_id] = Book(_title, _author);
  }

  // conditionals and loops
  function isEvenNumber(uint _number) public view returns(bool) {
    if (_number % 2 == 0) {
      return true;
    } else {
      return false;
    }
  }

  uint[] public numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  
  function countEvenNumbers() public view returns (uint) {
    uint count = 0;
    
    for(uint i = 0; i < numbers.length; i++) {
      if(isEvenNumber(numbers[i])) {
          count ++;
      }
    }
        
    return count;
 }

  

}
