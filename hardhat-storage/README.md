# Storage Contract Hardhat Project

This project demonstrates a basic Hardhat workflow for deploying and testing a simple `Storage` smart contract using Hardhat Ignition. It includes:

- The `Storage.sol` contract
- Automated tests for the contract
- Hardhat Ignition deployment modules

## Project Structure

- `contracts/Storage.sol` - The Storage contract source code
- `test/Storage.ts` - Tests for the Storage contract
- `ignition/modules/Storage.ts` - Ignition deployment module for Storage
- `hardhat.config.js` - Hardhat configuration

## How to Use

### Install Dependencies

```bash
npm install
```

### Compile Contracts

```bash
npx hardhat compile
```

### Run Tests

```bash
npx hardhat test
```

### Deploy to Celo Alfajores Testnet

Make sure your `.env` file contains the correct private key and API keys for Celo Alfajores Testnet.

```bash
npx hardhat ignition deploy ./ignition/modules/Storage.ts --network alfajores --deployment-id alfajores-deployment
```

## Contract Address

Deployed Storage contract address (Celo Alfajores Testnet.):

```
0x3ACe3d066d003748d56C114cCD00A656D87D0e22
```

Replace `0x3ACe3d066d003748d56C114cCD00A656D87D0e22` with your actual deployed contract address after deployment.

## Example Usage

You can interact with the deployed contract using Hardhat scripts or directly via Etherscan/Blockscout for Celo Alfajores Testnet.

### Store a Value

```js
await storage.store(42);
```

### Retrieve a Value

```js
const value = await storage.retrieve();
```

## Environment Variables

Create a `.env` file in the project root with the following variables:

```
PRIVATE_KEY=your_private_key
```

## License

MIT
