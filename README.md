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

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Acknowledgments

- thirdweb for providing powerful Web3 development tools[4][7][11]
- The Ethereum community for continuous innovation in decentralized applications
- Open-source contributors creating templates and examples for blockchain development[1][2][3][8]

Citations:
[1](#https://github.com/spandan114/Crowdfunding-DAPP)
[2](#https://github.com/thirdweb-dev/examples)
[3](#https://github.com/JustinBenito/crowdfunding-smartcontract)
[4] https://thirdweb.com/templates/next-starter
[5] https://github.com/thirdweb-dev/examples/blob/main/README.md
[6] https://www.hatica.io/blog/best-practices-for-github-readme/
[7] https://docs.moonbeam.network/tutorials/eth-api/thirdweb/
[8] https://github.com/ahmedsemih/CrowdFunding-dApp
[9] https://github.com/thirdweb-example
[10] https://educationecosystem.com/education_ecosystem/lKwKL-crowdfunding-platform-dapp-ethereum-solidity
[11] https://github.com/thirdweb-example/thirdweb-chainlink-template/blob/main/README.md
[12] https://www.ijisae.org/index.php/IJISAE/article/view/2587
[13] https://github.com/thirdweb-example/nft-minting-template/blob/main/README.md
[14] https://www.youtube.com/watch?v=AcXVKkYnu1c
[15] https://github.com/thirdweb-example/thirdweb-nextui-org-starter/blob/main/README.md
[16] https://github.com/thirdweb-example/vite-starter/blob/main/README.md
[17] https://ijisae.org/index.php/IJISAE/article/download/2587/1169/7505
[18] https://portal.thirdweb.com/cli/create
[19] https://coinsbench.com/create-a-crowdfunding-smart-contract-using-solidity-76183725bac8
[20] https://thirdweb.com/templates/vite-starter
[21] https://dev.to/sukodes/how-i-built-a-decentralized-crowdfunding-app-with-foundryincl-unit-tests-1kma
[22] https://www.youtube.com/watch?v=gpW3CzpGhGo
[23] https://docs.multiversx.com/developers/tutorials/crowdfunding-p1/
[24] https://thirdweb.com/templates/node-starter
[25] https://www.alchemy.com/dapps/list-of/web3-fundraising-tools-on-ethereum
[26] https://github.com/thirdweb-example
[27] https://metamask.io/news/build-and-deploy-a-decentralized-crowdfunding-smart-contract-on-the-linea
[28] https://thirdweb.com/templates/marketplace
[29] https://tilburgsciencehub.com/topics/collaborate-share/share-your-work/content-creation/readme-best-practices/
[30] https://github.com/DeltaVD/create-thirdweb-dapp
[31] https://github.com/thirdweb-example/custom-dashboard/blob/main/README.md
[32] https://blog.thirdweb.com/get-the-best-from-thirdweb/
[33] https://docs.cyber.co/build-on-cyber/thirdweb-sdk
[34] https://github.com/thirdweb-example/marketplace-v3/blob/main/README.md
[35] https://docs.moonbeam.network/builders/ethereum/dev-env/thirdweb/
[36] https://blog.thirdweb.com/guides/how-to-build-a-dapp/
[37] https://github.com/thirdweb-example/edition-drop/blob/main/README.md
[38] https://github.com/thirdweb-dev/js/blob/main/README.md
[39] https://www.youtube.com/watch?v=dgbVx3_lvR0
[40] https://github.com/thirdweb-dev/insight/blob/main/README.md
