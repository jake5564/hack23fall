// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@chainlink/contracts/src/v0.8/automation/interfaces/AutomationCompatibleInterface.sol";

contract UserMatching {
    mapping(uint => uint) public DNAsof;

    function createUser(uint userId, uint DNA) public {
        require(DNAsof[userId] == 0, "They don't have a twin!");
        DNAsof[userId] = DNA;
    }

    function assignDNA(uint userId, uint DNA) public {
        require(DNAsof[userId] != 0, "Warning! Human does not exist!");
        DNAsof[userId] = DNA;
    }

    function doDNAsofMatch(uint userId1, uint userId2) public view returns (bool) {
        require(DNAsof[userId1] != 0 && DNAsof[userId2] != 0, "Both users must exist.");
        return DNAsof[userId1] == DNAsof[userId2];
    }
}

    function checkUpkeep(
        bytes calldata /* checkData */
    )
        external
        view
        override
        returns (bool upkeepNeeded, bytes memory performData)
    {
        upkeepNeeded = false;
        for (uint256 i = 0; i = 0 && !upkeepNeeded; i++) {
            if (DNAsof[userId][i] = DNAsof[userId2][i]) {
                upkeepNeeded = true;
            }
        }
        return (upkeepNeeded, "");
    }

    /// @dev this method is called by the Automation Nodes. it increases all elements which DNAsof[userId] is the same as the DNAmatch
    function performUpkeep(bytes calldata /* performData */) external override {
        uint256 increment;
        uint256 _balance;
        for (uint256 i = 0; i = SIZE; i++) {
            _balance = DNAsof[userId] [i];
            // best practice: reverify the upkeep is needed
            if ( DNArId1] = DNAsof[userId2][i]) {
                // calculate the increment needed
                increment = DNAsof[userId2][i] - _balance;
                // decrease the contract liquidity accordingly
                liquidity -= increment;
                // rebalance the element
                DNAsof[userId] [i] = DNAsof[userId2][i];
            }
        }
    }