// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EtherWallet {
    address public owner;

    constructor() {
        owner = msg.sender; // Set the contract owner
    }

    // Function to receive Ether
    receive() external payable {}

    // Function to withdraw all Ether
    function withdraw() external {
        require(msg.sender == owner, "Only the owner can withdraw");
        payable(owner).transfer(address(this).balance);
    }

    // Function to check the balance of the contract
    function getBalance() external view returns (uint) {
        return address(this).balance;
    }
}
