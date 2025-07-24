# Week3 Contract deployment on Celo Alfajores Testnet

In this project, is the code for deploying a Storage contract using Foundry and Hardhat on the Celo Alfajores Testnet.

## Project Structure

```
├── hardhat/          # Hardhat project folder
├── foundry/          # Foundry project folder
└── README.md         # This file
```

## Storage Contract

A simple smart contract that allows you to:
- Store a uint256 value
- Retrieve the stored value

## Prerequisites

1. Node.js and npm installed
2. Foundry installed ([Installation Guide](https://book.getfoundry.sh/getting-started/installation))
3. Celo wallet with CELO tokens for Alfajores testnet
4. Get testnet CELO from [Celo Faucet](https://faucet.celo.org/)

## Setup

### Hardhat Setup
```bash
cd hardhat
npm install
npx hardhat vars set PRIVATE_KEY
npx hardhat vars set ETHERSCAN_API_KEY
```

### Foundry Setup
```bash
cd foundry
forge init --force .
cp .env.example .env
# Edit .env with your private key and API key
cp ../hardhat/contracts/Storage.sol src/
```

## Deployment Commands

### Hardhat Deployment
```bash
cd hardhat
npx hardhat ignition deploy ./ignition/modules/Storage.js --network alfajores
npx hardhat verify --network alfajores <CONTRACT_ADDRESS>
```

### Foundry Deployment
```bash
cd foundry
forge script script/DeployStorage.s.sol:DeployStorage --rpc-url alfajores --broadcast --verify
```

## Deployed Contract Addresses

### Hardhat Deployment
- **Contract Address**: `0xDF6d97A1C84699B2b8C6C9ce6b44650D3B420B8c`
- **Explorer**: [View on Celoscan](https://alfajores.celoscan.io/address/0xDF6d97A1C84699B2b8C6C9ce6b44650D3B420B8c#code)

### Foundry Deployment  
- **Contract Address**: `0x4B6fd16f3175FD822FeEFC7bB0Da6c4E54d8259b`
- **Explorer**: [View on Celoscan](https://alfajores.celoscan.io/address/0x4B6fd16f3175FD822FeEFC7bB0Da6c4E54d8259b#code)

## Testing the Contracts

### Using Hardhat Console
```bash
cd hardhat
npx hardhat console --network alfajores

# In console:
const Storage = await ethers.getContractFactory("Storage");
const storage = Storage.attach("0x4B6fd16f3175FD822FeEFC7bB0Da6c4E54d8259b");
await storage.store(123);
await storage.retrieve(); // Returns 123
```

### Using Foundry Cast
```bash
# Read current value
cast call 0x4B6fd16f3175FD822FeEFC7bB0Da6c4E54d8259b "retrieve()" --rpc-url alfajores

# Store a new value
cast send 0x4B6fd16f3175FD822FeEFC7bB0Da6c4E54d8259b "store(uint256)" 456 --rpc-url alfajores --private-key $PRIVATE_KEY
```

## Network Information

- **Network**: Celo Alfajores Testnet
- **Chain ID**: 44787
- **RPC URL**: https://alfajores-forno.celo-testnet.org
- **Explorer**: https://alfajores.celoscan.io/
- **Faucet**: https://faucet.celo.org/

## Key Learnings

### Issues Resolved

1. **Private Key Format**: Ensured the private key in your hardhat Configuration variables starts with 0x to avoid deployment errors.

## Resources

- [Celo Documentation](https://docs.celo.org/)
- [Hardhat Documentation](https://hardhat.org/docs)
- [Foundry Documentation](https://book.getfoundry.sh/)