//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

library Events {
    // Investment-related events
    event InvestorAdded(address indexed investor, uint256 indexed tokenId, uint256 timestamp);

    event InvestInETH(address indexed investor, uint256 amount, uint256 shareAmount);

    event InvestInERC20(
        address indexed investor,
        address indexed tokenAddress,
        uint256 amount,
        uint256 shareAmount
    );

    // Module-related events
    event ModuleAdded(address indexed module, uint256 timestamp, address indexed operator);

    event ModuleRemoved(address indexed module, uint256 timestamp, address indexed operator);

    event ModulePaymentApproved(
        address indexed module,
        uint256 eth,
        address[] tokens,
        uint256[] amounts,
        uint256 timestamp
    );

    event ModulePaymentPulled(
        address indexed module,
        uint256 eth,
        address[] tokens,
        uint256[] amounts,
        uint256 timestamp
    );
}
