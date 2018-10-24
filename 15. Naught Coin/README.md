# [Naught Coin](https://ethernaut.zeppelin.solutions/level/0xddf4eab541bf1373b70022c4cd81fe2a4ccf476a)
The interesting part about this challenge is that OpenZeppelin has changed its implementation of ERC20 and StandardToken.sol is no longer avaiable through github import in remix. I found the version that makes the code compile in remix in NaughtCoin.sol above. However, this is not required to pass this level.

The answer lies in these two functions:
```solidity
function approve(address _spender, uint256 _value) public returns (bool);
function transferFrom(
  address _from,
  address _to,
  uint256 _value
)
  public
  returns (bool);
```

solution:
```
# first approve the player for all
contract.approve(player, 1000000 * (10 ** 18))
# then spend the approved amount
contract.transferFrom(player, '0x0', 1000000 * (10 ** 18))
```
