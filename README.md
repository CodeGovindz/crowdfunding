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
  - Refund option (enabled/disabled) ([Style Guide](https://ethereum.org/en/contributing/style-guide/?utm_source=chatgpt.com))

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

- `createCampaign(string _name, string _description, uint256 _goal, uint256 _durationInDays, bool _refundsEnabled)`: Creates a new campaign. ([Security checklists for Ethereum smart contract development: patterns and best practices](https://arxiv.org/abs/2008.04761?utm_source=chatgpt.com))

- `fundCampaign(uint256 _campaignId) payable`: Allows users to contribute Ether to a campaign. Excess funds are refunded.

- `withdrawFunds(uint256 _campaignId)`: Enables campaign owners to withdraw funds after a successful campaign.

- `claimRefund(uint256 _campaignId)`: Allows contributors to claim refunds from unsuccessful campaigns with refunds enabled.

- `getCampaignDetails(uint256 _campaignId)`: Returns details of a specific campaign. ([Best Practices for Smart Contract Development – Yos Riady · Software Craftsman](https://yos.io/2019/11/10/smart-contract-development-best-practices/?utm_source=chatgpt.com))

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
   git clone https://github.com/yourusername/crowdfunding-dapp.git
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

## 📄 Usage Guide

### 📝 Creating a Campaign

1. Connect your Web3 wallet (e.g., MetaMask).
2. Invoke the `createCampaign` function with desired parameters:
   - Name
   - Description
   - Funding goal (in wei)
   - Duration (in days)
   - Refund option (true/false) ([Documentation - Smart Contract Security Field Guide](https://scsfg.io/developers/documentation/?utm_source=chatgpt.com))

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

This project is licensed under the [MIT License](LICENSE).

---
