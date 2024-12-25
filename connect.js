const { Web3 } = require('web3'); // Explicit import for Web3 4.x

// Initialize Web3 with Ganache RPC URL
const web3 = new Web3(new Web3.providers.HttpProvider('http://127.0.0.1:7545'));

// Test connection
(async () => {
  try {
    const isListening = await web3.eth.net.isListening();
    console.log("Connected to Ganache:", isListening);
  } catch (error) {
    console.error("Connection failed:", error);
  }
})();
