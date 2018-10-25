# [Locked](https://ethernaut.zeppelin.solutions/level/0xe83cf387ddfd13a2db5493d014ba5b328589fb5f)

[A Medium article](https://medium.com/coinmonks/ethernaut-lvl-17-locked-walkthrough-how-to-properly-use-structs-in-solidity-f9900c8843e2) that has an excellent explanation of struct and how (not) to use them.

Once the concept is understood, the solution is pretty simple:
```JavaScript
contract.register("0x0000000000000000000000000000000000000000000000000000000000000001", "0x0")
```
