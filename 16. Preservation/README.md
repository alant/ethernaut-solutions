# [Preservation](https://ethernaut.zeppelin.solutions/level/0xe3545ebaa3a0381ebd9f0868ae61b5dc89962ef5)
It's interesting that if I somehow get the PreservationHack address and use console to call contract.setFirstTime(#PreservationHack's address), the address in the uint format will not be correctly passed. So I had to make the two calls in the hack() function. 
