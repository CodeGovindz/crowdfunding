<img src="https://r2cdn.perplexity.ai/pplx-full-logo-primary-dark%402x.png" class="logo" width="120"/>

# can u hide citations inside numbers

Certainly! Here's the README with citations hidden inside numbered brackets, which is a common style for technical documentation:

---

# Decentralized Crowdfunding Platform

A blockchain-based crowdfunding platform that allows users to create campaigns, contribute funds, and manage fundraising transparently and securely. Built using thirdweb, Solidity, and blockchain technology, this decentralized application (DApp) eliminates intermediaries and ensures trust through smart contracts.

## Features

- **Campaign Creation**: Users can create customized fundraising campaigns with names, descriptions, funding goals, and deadlines
- **Secure Contributions**: Contributors can fund campaigns directly with cryptocurrency
- **Automatic Goal Tracking**: Smart contracts automatically track contribution totals and campaign status
- **Deadline Enforcement**: Campaign deadlines are enforced by the blockchain, ensuring transparent timelines
- **Refund Mechanism**: Optional refund capability for failed campaigns that don't meet their goals
- **Owner Withdrawals**: Campaign creators can withdraw funds only if goals are met and deadlines have passed
- **Campaign Dashboard**: View all campaigns and track contribution history
- **Wallet Integration**: Seamless connection with cryptocurrency wallets


## Tech Stack \& Technologies

| Technology | Purpose |
| :-- | :-- |
| Solidity | Smart contract development for the crowdfunding logic |
| thirdweb | Development framework for Web3 applications |
| Next.js | Frontend framework for building the user interface |
| Ethereum | Blockchain network for deploying the smart contracts |
| Web3.js/Ethers.js | JavaScript libraries for interacting with the blockchain |
| Hardhat/Foundry | Development environment for testing and deploying contracts |
| Tailwind CSS | For responsive and modern UI design |

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

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Acknowledgments

- thirdweb for providing powerful Web3 development tools
- The Ethereum community for continuous innovation in decentralized applications
- Open-source contributors creating templates and examples for blockchain development

---

If you want, I can also provide a references section with URLs or sources for these numbers. Would you like me to do that?

