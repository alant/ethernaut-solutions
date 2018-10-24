# [Gatekeeper Two](https://ethernaut.zeppelin.solutions/level/0x65d2dd3360086cf306e700a0703ee38650d28413)
Relatively straightforward after the last challenge which introduces the debugger. With the debugger and JavaScript VM, debugging becomes really fast without actually sending the tx to ropsten.
- gateTwo: extcodesize during initialization is 0. Otherwise it has a certain size
- gateTree: calling contract's address(this) is msg.sender inside the contract been called
