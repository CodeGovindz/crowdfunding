// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Crowdfunding {
    struct Campaign {
        address owner;
        string name;
        string description;
        uint256 goal;
        uint256 deadline;
        uint256 totalContributions;
        bool refundsEnabled;
        bool exists;
    }

    address public platformOwner;
    Campaign[] public campaigns;
    mapping(address => uint256[]) public userCampaigns;
    mapping(uint256 => mapping(address => uint256)) public contributions; // Campaign ID -> (Contributor Address -> Contribution Amount)

    modifier onlyCampaignOwner(uint256 _campaignId) {
        require(campaigns[_campaignId].exists, "Campaign does not exist");
        require(
            campaigns[_campaignId].owner == msg.sender,
            "Only campaign owner allowed"
        );
        _;
    }

    constructor() {
        platformOwner = msg.sender;
    }

    function createCampaign(
        string memory _name,
        string memory _description,
        uint256 _goal,
        uint256 _durationInDays,
        bool _refundsEnabled
    ) external {
        require(_goal > 0, "Goal must be greater than 0");
        require(_durationInDays > 0, "Duration must be greater than 0");

        Campaign storage newCampaign = campaigns.push();
        newCampaign.owner = msg.sender;
        newCampaign.name = _name;
        newCampaign.description = _description;
        newCampaign.goal = _goal;
        newCampaign.deadline = block.timestamp + (_durationInDays * 1 days);
        newCampaign.refundsEnabled = _refundsEnabled;
        newCampaign.exists = true;

        userCampaigns[msg.sender].push(campaigns.length - 1);
    }

    function fundCampaign(uint256 _campaignId) external payable {
    require(campaigns[_campaignId].exists, "Campaign does not exist");
    require(block.timestamp < campaigns[_campaignId].deadline, "Campaign deadline passed");
    
    Campaign storage campaign = campaigns[_campaignId];

    uint256 remainingGoal = campaign.goal - campaign.totalContributions;
    require(remainingGoal > 0, "Campaign already fully funded");
    require(msg.value > 0, "Contribution must be greater than zero");

    uint256 contribution = msg.value;
    if (msg.value > remainingGoal) {
        contribution = remainingGoal; // Limit contribution to the remaining goal
        payable(msg.sender).transfer(msg.value - remainingGoal); // Refund the excess
    }

    contributions[_campaignId][msg.sender] += contribution;
    campaign.totalContributions += contribution;
}


    function withdrawFunds(uint256 _campaignId) external onlyCampaignOwner(_campaignId) {
        Campaign storage campaign = campaigns[_campaignId];
        require(block.timestamp >= campaign.deadline, "Campaign is still active");
        require(campaign.totalContributions >= campaign.goal, "Campaign did not reach goal");

        uint256 balance = campaign.totalContributions;
        campaign.totalContributions = 0; // Prevent reentrancy
        payable(campaign.owner).transfer(balance);
    }

    function claimRefund(uint256 _campaignId) external {
        Campaign storage campaign = campaigns[_campaignId];
        require(campaign.exists, "Campaign does not exist");
        require(block.timestamp >= campaign.deadline, "Campaign is still active");
        require(campaign.totalContributions < campaign.goal, "Campaign was successful");
        require(campaign.refundsEnabled, "Refunds are not enabled for this campaign");

        uint256 contribution = contributions[_campaignId][msg.sender];
        require(contribution > 0, "No contribution to refund");

        contributions[_campaignId][msg.sender] = 0; // Prevent reentrancy
        payable(msg.sender).transfer(contribution);
    }

    function getCampaignDetails(uint256 _campaignId)
        external
        view
        returns (
            address owner,
            string memory name,
            string memory description,
            uint256 goal,
            uint256 deadline,
            uint256 totalContributions,
            bool refundsEnabled
        )
    {
        require(_campaignId < campaigns.length, "Campaign does not exist");

        Campaign storage campaign = campaigns[_campaignId];

        return (
            campaign.owner,
            campaign.name,
            campaign.description,
            campaign.goal,
            campaign.deadline,
            campaign.totalContributions,
            campaign.refundsEnabled
        );
    }

    function getUserCampaigns(address _user) external view returns (uint256[] memory) {
        return userCampaigns[_user];
    }
}
