//SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract TheBlockchainMessenger {

    uint public changeCounter;
    address public owner;
    string public theMessage;
    
    constructor (){
        owner = msg.sender;
    }

    function updateMessage(string memory _newMessage) public {
        if(owner == msg.sender){
            theMessage = _newMessage;
            changeCounter++;
        }
    }

}
