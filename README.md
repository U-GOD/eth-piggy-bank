# ETH Piggy Bank on zkSync Era

A simple Solidity smart contract that lets users deposit and withdraw ETH.  
Deployed to zkSync Era Sepolia Testnet for low-cost transactions.

## ✨ Features

- Users can deposit any amount of ETH into their personal balance.
- Users can withdraw ETH whenever they like.
- Tracks balances securely.
- Emits events on deposit and withdrawal.
- Uses `call` for safe withdrawals compatible with zkSync.

## 🛠 Technologies

- Solidity ^0.8.20
- zkSync Remix Plugin
- MetaMask

## 🚀 How to Use

1. Connect your wallet to zkSync Era Sepolia.
2. Deploy the contract via Remix with the zkSync plugin.
3. Use the contract's functions:
   - `deposit()` — send ETH into the contract.
   - `withdraw(amount)` — withdraw ETH.
   - `getBalance(address)` — check balance.

## 📄 Contract Address

> Add your deployed contract address here after deployment, e.g.
>
> `0xEbb5e2e952a874D68cabd56fb418D2FeE5a5E4E8`

## 🧠 Lessons Learned

This project demonstrates:

- Deploying smart contracts to zkSync.
- Handling ETH safely with `.call`.
- Understanding reentrancy considerations.
- Testing deposits and withdrawals.

## 🙌 Author

Built step by step to learn Solidity and zkSync.

