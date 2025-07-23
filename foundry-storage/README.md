# Foundry Storage Contract Project

This project demonstrates how to use Foundry to develop, test, and deploy a simple `Storage` smart contract. The contract allows storing and retrieving a single `uint256` value. The repository is organized for clarity and ease of use, with scripts and tests following best practices.

## Project Structure

- `src/Storage.sol` — The main Storage contract.
- `script/Storage.s.sol` — A Foundry script to deploy the Storage contract.
- `test/Storage.t.sol` — Tests for the Storage contract using Forge's testing framework.

## What Was Done

1. **Storage Contract**

   - Implemented a simple contract with two functions:
     - `store(uint256 num)`: Stores a value.
     - `retrieve()`: Returns the stored value.

2. **Deployment Script**

   - `Storage.s.sol` uses Foundry's scripting system to deploy the Storage contract on any EVM-compatible network.
   - The script uses `vm.startBroadcast()` and `vm.stopBroadcast()` to broadcast transactions.

3. **Testing**
   - `Storage.t.sol` contains unit and fuzz tests:
     - Checks that the initial value is zero.
     - Tests storing and retrieving specific values.
     - Includes a fuzz test to check storing arbitrary values.
   - The test structure follows the approach of Forge's best practices, similar to the provided Counter example.

## How to Use

### 1. Install Dependencies

Make sure you have [Foundry](https://book.getfoundry.sh/getting-started/installation) installed.

```bash
foundryup
```

### 2. Build Contracts

```bash
forge build
```

### 3. Run Tests

```bash
forge test
```

### 4. Deploy the Contract

Update your RPC URL and private key in your environment or use Foundry's CLI options, then run:

```bash
forge script script/Storage.s.sol --rpc-url <YOUR_RPC_URL> --private-key <YOUR_PRIVATE_KEY> --broadcast
```

## Notes

- The project is modular and easy to extend for more complex contracts.
- The test file demonstrates both unit and fuzz testing.
- The script file is ready for mainnet/testnet deployment with minimal changes.

## License

MIT
