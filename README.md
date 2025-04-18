# Upgradeable Smart Contract Demo – BoxV1 → BoxV2

## Overview
This project demonstrates the use of **upgradeable smart contracts** via the **Proxy + Logic contract pattern**. It highlights how contract logic can be extended **without redeploying or losing storage data**—an essential feature in long-term DeFi and dApp systems.

---

## Why Upgradeability Matters
- On-chain applications evolve.
- Bugs get patched.
- Features get added.
- But data must stay intact.

This contract design separates **logic (BoxV1/BoxV2)** from **storage (Proxy)**, allowing seamless upgrades.

---

## Structure

### `BoxV1.sol`
- Initial implementation
- Basic `store()` and `retrieve()` functions
- Sets a foundational `uint256 value`

### `BoxV2.sol`
- Upgrade of `BoxV1`
- Adds a `doubleValue()` function to extend logic
- Inherits from `BoxV1` to preserve original functionality

---

##  Upgrade Workflow (Simplified)
1. Deploy Proxy with `BoxV1`
2. Use `store()` and `retrieve()` as normal
3. Upgrade Proxy to point to `BoxV2`
4. Use new `doubleValue()` function without touching state

---

##  Tech Stack
- **Solidity**
- **Foundry** (for testing & deploying)
- **UUPS or Transparent Proxy pattern** (depending on setup)

---

##  Real-World Application
Used in:
- DeFi protocols needing versioned logic (Aave, Compound)
- DAOs for governance logic upgrades
- NFT contracts that evolve over time

---

##  Developer Notes
This example is part of my journey into **secure, scalable smart contract design**. I'm actively building and testing advanced patterns used in production-level dApps and DeFi systems.

Stay tuned for more modules.

---

##  Related Projects
- [Modular Vault System](#) (DeFi)
- [NFT-based Airdrop Contract](#)
- [Multi-Sig Wallet Simulation](#)

---

## Built by:
Alman Adeel 

