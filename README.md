Smart Contract Project

Usage

This repository demonstrates a smart contract that can:

Receive Ether tokens.

Allow the owner to withdraw all Ether in the contract balance.

Display the balance of the contract.

It also includes configurations for:

Running web3.js with Ganache and/or a public testnet.

Connecting MetaMask with Ganache and/or a public testnet.

Features

Ether Reception: Users can send Ether to the smart contract.

Owner Withdrawal: Only the contract owner can withdraw Ether from the contract.

Balance Inquiry: Anyone can check the Ether balance of the contract.

Repository Structure

project-root/
|-- README.md
|-- LICENSE
|-- contracts/
|   |-- SmartContract.sol
|-- scripts/
|   |-- deploy.js
|   |-- interact.js
|-- test/
|   |-- testSmartContract.js
|-- package.json

Demo Screenshots

Smart Contract Deployment


MetaMask Connection


Balance Check


Examples

Deploying the Smart Contract

Run the deployment script:

node scripts/deploy.js

Sending Ether to the Contract

Use the interact script:

node scripts/interact.js sendEther <amount>

Withdrawing Ether as the Owner

Use the interact script:

node scripts/interact.js withdraw

Checking Contract Balance

Run the interact script:

node scripts/interact.js checkBalance

Installation

Clone the repository:

git clone <repository-url>
cd project-root

Install dependencies:

npm install

Compile the smart contract:

npx truffle compile

Deploy the contract using Ganache:

npx truffle migrate --network development

Configuration

Setting Up Ganache

Download and install Ganache from Truffle Suite.

Start Ganache and configure its RPC server URL.

Configuring MetaMask

Open MetaMask and add a new network.

Input the Ganache RPC URL and chain ID.

Running web3.js with Ganache

Update the web3.js configuration in scripts/interact.js with the Ganache RPC URL.

Run scripts using Node.js.

License

This project is licensed under the MIT License. See the LICENSE file for details.

References

Web3.py Quickstart

Web3.js Documentation

Ganache

YouTube Tutorial

Using Ganache with Remix and MetaMask
