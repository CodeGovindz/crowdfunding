[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Issues](https://img.shields.io/github/issues/CodeGovindz/crowdfunding)](https://github.com/CodeGovindz/crowdfunding/issues)
[![Forks](https://img.shields.io/github/forks/CodeGovindz/crowdfunding)](https://github.com/CodeGovindz/crowdfunding/network/members)
[![Stars](https://img.shields.io/github/stars/CodeGovindz/crowdfunding)](https://github.com/CodeGovindz/crowdfunding/stargazers)
[![Last Commit](https://img.shields.io/github/last-commit/CodeGovindz/crowdfunding)](https://github.com/CodeGovindz/crowdfunding/commits/main)
[![GitHub pull requests](https://img.shields.io/github/issues-pr/CodeGovindz/crowdfunding)](https://github.com/CodeGovindz/crowdfunding/pulls)
![Solidity](https://img.shields.io/badge/Solidity-363636?logo=solidity&logoColor=white)
![Ethereum](https://img.shields.io/badge/Ethereum-3C3C3D?logo=ethereum&logoColor=white)
![Hardhat](https://img.shields.io/badge/Hardhat-FFCF00?logo=ethereum&logoColor=black)
![Node.js](https://img.shields.io/badge/Node.js-339933?logo=nodedotjs&logoColor=white)
![npm](https://img.shields.io/badge/npm-CB3837?logo=npm&logoColor=white)
![JavaScript](https://img.shields.io/badge/JavaScript-F7DF1E?logo=javascript&logoColor=black)
![MetaMask](https://img.shields.io/badge/MetaMask-F6851B?logo=metamask&logoColor=white)

# 📢 Decentralized Crowdfunding Smart Contract

A secure and transparent Ethereum-based smart contract enabling users to create and manage fundraising campaigns without intermediaries.

---

## 🚀 Overview

This Solidity smart contract facilitates decentralized crowdfunding by allowing users to:

- **Create** fundraising campaigns with specific goals and deadlines.
- **Contribute** Ether directly to campaigns.
- **Withdraw** funds upon successful campaign completion.
- **Claim refunds** if campaigns fail to meet their goals (when refunds are enabled).

---

## 🔧 Features

- **Campaign Creation**: Initiate campaigns by specifying:
  - Name
  - Description
  - Funding goal (in wei)
  - Duration (in days)
  - Refund option (enabled/disabled)

- **Secure Contributions**: Contributors can fund campaigns directly with Ether. Excess contributions are automatically refunded.

- **Automatic Goal Tracking**: The contract tracks total contributions and enforces campaign deadlines.

- **Refund Mechanism**: If enabled, contributors can claim refunds for campaigns that do not meet their funding goals by the deadline.

- **Owner Withdrawals**: Campaign creators can withdraw funds only if the funding goal is met and the campaign has ended.

- **User Campaign Tracking**: Maintains a record of campaigns created by each user.

---

## 🧱 Smart Contract Structure

### 📁 Data Structures

- **Campaign Struct**:
  - `owner`: Address of the campaign creator.
  - `name`: Name of the campaign.
  - `description`: Brief description of the campaign.
  - `goal`: Funding goal in wei.
  - `deadline`: Timestamp when the campaign ends.
  - `totalContributions`: Total amount of Ether contributed.
  - `refundsEnabled`: Boolean indicating if refunds are allowed.
  - `exists`: Boolean indicating if the campaign exists.

- **Mappings**:
  - `userCampaigns`: Maps user addresses to their created campaign IDs.
  - `contributions`: Nested mapping to track contributions per campaign per user.

### ⚙️ Core Functions

- `createCampaign(string _name, string _description, uint256 _goal, uint256 _durationInDays, bool _refundsEnabled)`: Creates a new campaign.
- `fundCampaign(uint256 _campaignId) payable`: Allows users to contribute Ether to a campaign. Excess funds are refunded.
- `withdrawFunds(uint256 _campaignId)`: Enables campaign owners to withdraw funds after a successful campaign.
- `claimRefund(uint256 _campaignId)`: Allows contributors to claim refunds from unsuccessful campaigns with refunds enabled.
- `getCampaignDetails(uint256 _campaignId)`: Returns details of a specific campaign.
- `getUserCampaigns(address _user)`: Retrieves all campaign IDs created by a specific user.

---

## 🛠️ Deployment & Testing

### Prerequisites

- [Node.js](https://nodejs.org/) and [npm](https://www.npmjs.com/) installed.
- [Hardhat](https://hardhat.org/) for development and testing.
- [MetaMask](https://metamask.io/) or another Web3 wallet.

### Steps

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/CodeGovindz/crowdfunding.git
   cd crowdfunding-dapp
   ```

2. **Install Dependencies**:
   ```bash
   npm install
   # or
   yarn install
   ```

3. **Compile the Contract**:
   ```bash
   npx hardhat compile
   ```

4. **Deploy to a Local Network**:
   ```bash
   npx hardhat run scripts/deploy.js --network localhost
   ```

5. **Run Tests**:
   ```bash
   npx hardhat test
   ```

---

## 🌐 Deploying on Thirdweb

You can easily deploy this smart contract using the [Thirdweb Dashboard](https://thirdweb.com/), a powerful no-code interface for deploying and managing smart contracts.

### 🚀 Steps to Deploy on Thirdweb

1. **Visit the Thirdweb Dashboard**:  
   [https://thirdweb.com/dashboard](https://thirdweb.com/dashboard)

2. **Connect Your Wallet**:  
   Use MetaMask or any supported wallet to connect.

3. **Create a New Contract**:
   - Click on **"Deploy Contract"**
   - Choose **"Deploy your own" → "Solidity"**
   - Paste your contract code into the Solidity editor.

4. **Configure Contract Details**:
   - Contract Name: `Crowdfunding`
   - Compiler Version: `0.8.x` (match the pragma version in your contract)
   - Select environment: `Mainnet`, `Goerli`, `Sepolia`, or any supported testnet.

5. **Deploy the Contract**:
   - Click **"Deploy"** and approve the transaction in your wallet.
   - After deployment, you’ll receive a **contract address** and **dashboard interface** for interacting with the contract.

6. **Interact with the Contract**:
   - Use the Thirdweb dashboard UI to call contract functions like `createCampaign`, `fundCampaign`, `withdrawFunds`, etc., without writing frontend code.
   - Or integrate with their [JavaScript SDK](https://portal.thirdweb.com/) for building dApps.

---

## 📄 Usage Guide

### 📝 Creating a Campaign

1. Connect your Web3 wallet (e.g., MetaMask).
2. Invoke the `createCampaign` function with desired parameters:
   - Name
   - Description
   - Funding goal (in wei)
   - Duration (in days)
   - Refund option (true/false)

### 💰 Contributing to a Campaign

1. Identify the campaign ID you wish to support.
2. Call the `fundCampaign` function with the campaign ID and send Ether.
3. Confirm the transaction in your wallet.

### 🏦 Withdrawing Funds (Campaign Owners)

1. Ensure the campaign has met its goal and the deadline has passed.
2. Invoke the `withdrawFunds` function with the campaign ID.
3. Confirm the transaction to receive the funds.

### 🔄 Claiming Refunds

1. Verify that the campaign did not meet its goal and refunds are enabled.
2. Call the `claimRefund` function with the campaign ID.
3. Confirm the transaction to receive your contributed Ether back.

---

## 🤝 Contributing

We welcome contributions! To contribute:

1. Fork the repository.
2. Create a new branch:
   ```bash
   git checkout -b feature/YourFeatureName
   ```

3. Commit your changes:
   ```bash
   git commit -m "Add YourFeatureName"
   ```

4. Push to the branch:
   ```bash
   git push origin feature/YourFeatureName
   ```

5. Open a Pull Request detailing your changes.

---

## 📜 License

This project is licensed under the [MIT License](https://mit-license.org/).
