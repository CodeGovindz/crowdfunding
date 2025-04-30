# Decentralized Crowdfunding Platform

A blockchain-based crowdfunding platform that allows users to create campaigns, contribute funds, and manage fundraising transparently and securely. Built using thirdweb, Solidity, and blockchain technology, this decentralized application (DApp) eliminates intermediaries and ensures trust through smart contracts.

## Features

- **Campaign Creation**: Users can create customized fundraising campaigns with names, descriptions, funding goals, and deadlines[1][8]
- **Secure Contributions**: Contributors can fund campaigns directly with cryptocurrency[1][8]
- **Automatic Goal Tracking**: Smart contracts automatically track contribution totals and campaign status[3]
- **Deadline Enforcement**: Campaign deadlines are enforced by the blockchain, ensuring transparent timelines[3]
- **Refund Mechanism**: Optional refund capability for failed campaigns that don't meet their goals[3][8]
- **Owner Withdrawals**: Campaign creators can withdraw funds only if goals are met and deadlines have passed[3]
- **Campaign Dashboard**: View all campaigns and track contribution history[1]
- **Wallet Integration**: Seamless connection with cryptocurrency wallets[1][8]

## Tech Stack & Technologies

| Technology | Purpose |
|------------|---------|
| Solidity | Smart contract development for the crowdfunding logic |
| thirdweb | Development framework for Web3 applications[4][7] |
| Next.js | Frontend framework for building the user interface[4][7] |
| Ethereum | Blockchain network for deploying the smart contracts |
| Web3.js/Ethers.js | JavaScript libraries for interacting with the blockchain[1] |
| Hardhat/Foundry | Development environment for testing and deploying contracts[8][11] |
| Tailwind CSS | For responsive and modern UI design[8] |

## Smart Contract Details

### Contract Features

- **Campaign Structure**: Stores owner address, name, description, funding goal, deadline, contribution total, refund settings, and existence flag
- **Ownership Management**: Tracks campaign creators and enforces ownership-based permissions
- **Contribution Tracking**: Maps contributor addresses to their donation amounts for each campaign
- **User Campaign Tracking**: Maintains lists of campaigns created by each user
- **Overflow Protection**: Automatically refunds excess contributions when a campaign is fully funded
- **Refund Capability**: Allows contributors to claim refunds for unsuccessful campaigns (if enabled)

### Core Functions

- `createCampaign`: Initializes a new fundraising campaign with custom parameters
- `fundCampaign`: Enables users to contribute to existing campaigns
- `withdrawFunds`: Allows campaign owners to collect funds after successful campaigns
- `claimRefund`: Permits contributors to recover funds from failed campaigns
- `getCampaignDetails`: Retrieves comprehensive information about specific campaigns
- `getUserCampaigns`: Lists all campaigns created by a specific user

## Installation

### Prerequisites

- Node.js and npm/yarn installed
- MetaMask or another Web3 wallet
- Basic knowledge of blockchain interactions

### Setup

1. Clone the repository
   ```
   git clone https://github.com/yourusername/crowdfunding-dapp.git
   cd crowdfunding-dapp
   ```

2. Install dependencies
   ```
   npm install
   # or
   yarn install
   ```

3. Configure environment variables
   ```
   # Create a .env file with the following variables
   NEXT_PUBLIC_PROVIDER_URL=your_provider_url
   NEXT_PUBLIC_CONTRACT_ADDRESS=deployed_contract_address
   CLIENT_ID=your_thirdweb_client_id
   ```

4. Deploy the smart contract (if not already deployed)
   ```
   npx hardhat run scripts/deploy.js --network your_preferred_network
   ```

5. Start the development server
   ```
   npm run dev
   # or
   yarn dev
   ```

## Usage

### Creating a Campaign

1. Connect your wallet by clicking the "Connect Wallet" button
2. Navigate to "Create Campaign" page
3. Fill in the campaign details:
   - Name
   - Description
   - Funding goal (in ETH)
   - Duration (in days)
   - Refund setting (enable/disable)
4. Submit the form to create your campaign on the blockchain

### Contributing to a Campaign

1. Browse available campaigns on the main page
2. Click on a campaign to view details
3. Enter the amount you wish to contribute
4. Confirm the transaction in your wallet
5. Your contribution will be recorded on the blockchain

### Withdrawing Funds (Campaign Owners)

1. Navigate to "My Campaigns" page
2. Select a successful campaign that has reached its deadline
3. Click "Withdraw Funds" to transfer the contributions to your wallet

### Claiming Refunds

1. Navigate to campaigns you've contributed to
2. For failed campaigns with refunds enabled, click "Claim Refund"
3. Confirm the transaction to receive your contribution back

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request
