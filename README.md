# Celo Alfajores Storage Projects

This repository contains two separate implementations of a simple Storage smart contract project, each using a different Ethereum development framework:

## License Effect

The smart contracts in this repository use the `GPL-3.0` license (see the SPDX identifier in the contract files). This means:

- Anyone can use, modify, and distribute the contract code.
- Any derivative or deployed version must also be open-sourced under the same GPL-3.0 license.
- Closed-source or proprietary use of derivatives is not allowed.
- This ensures improvements and changes remain open and free for the community.

## Folders

### 1. `foundry-storage`

- **Framework:** [Foundry](https://book.getfoundry.sh/)
- **Purpose:** Demonstrates contract development, testing, and deployment using Foundry tools (`forge`, `cast`).
- **Structure:**
  - `src/Storage.sol`: The Storage contract.
  - `script/Storage.s.sol`: Deployment script for Foundry.
  - `test/Storage.t.sol`: Unit and fuzz tests for the contract.
- **Usage:**
  - Build: `forge build`
  - Test: `forge test`
  - Deploy: `forge script ...`

### 2. `hardhat-storage`

- **Framework:** [Hardhat](https://hardhat.org/)
- **Purpose:** Demonstrates contract development, testing, and deployment using Hardhat, including Hardhat Ignition for deployment modules.
- **Structure:**
  - `contracts/Storage.sol`: The Storage contract.
  - `test/Storage.ts`: Tests for the contract (TypeScript).
  - `ignition/modules/Storage.ts`: Ignition deployment module.
  - `hardhat.config.ts`: Hardhat configuration.
- **Usage:**
  - Install dependencies: `npm install`
  - Compile: `npx hardhat compile`
  - Test: `npx hardhat test`
  - Deploy: `npx hardhat ignition deploy ...`

## Why Two Folders?

- **Comparison:** This setup allows you to compare workflows, tooling, and best practices between Foundry and Hardhat.
- **Learning:** Useful for developers learning both ecosystems or migrating between them.
- **Modularity:** Each folder is self-contained and can be used independently.

## License

GPL-3.0
