pragma solidity ^0.4.17;

contract LandTest {
  address public owner;

  string public Result;
  
  string public qry;

  event CallbackGetResult();

  function LandTest() public {
    owner = msg.sender;
  }

  function updateResult() public returns (string) {
    emit CallbackGetResult();
  }

  function setResult(string cap) public {
    require(msg.sender == owner);
    Result = cap;
  }

  function getResult() constant public returns (string) {
    return Result;
  }
  
  function setquery(string _qry) public {
    require(msg.sender == owner);
    qry = _qry;
  }
  
  function getquery() constant public returns (string) {
    return qry;
  }
}