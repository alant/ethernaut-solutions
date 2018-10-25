# [MagicNumber](https://ethernaut.zeppelin.solutions/level/0x7640adb7aa5f07ea42483ad3f30b0280d4e595f0)

Without [the solution article](https://medium.com/coinmonks/ethernaut-lvl-19-magicnumber-walkthrough-how-to-deploy-contracts-using-raw-assembly-opcodes-c50edb0f71a2), it's nearly impossible for me to come up with the bytecode needed to complete this level.

It seems that the magic number is decimal 42 istead of 0x42. So in order to pass this level the bytecode need to be changed slightly from the solution article above.

Here is the solution

```JavaScript
web3.eth.sendTransaction({ from:"0x8d012fa42370add6268b547d955eef603c89821a", data:"0x600a600c600039600a6000f3602a60805260206080f3" }, function(err,res){if (err) { console.log(err); } else {console.log(res);} });
```
After ran the above, get the txhash from console output, then get the contract address from etherscan. Finally, run the following

```JavaScript
contract.setSolver("contract address from etherscan")
```
