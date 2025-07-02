// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// A simple ETH Piggy Bank contract where users can deposit and withdraw ETH

contract EthPiggyBank {
    // Tracks each user's deposited ETH balance
    mapping(address => uint256) public balances;

    // Emitted when a user deposits ETH
    event Deposit(address indexed user, uint256 amount);

    // Allows users to deposit ETH into their piggy bank
    function deposit() external payable {
        balances[msg.sender] += msg.value; // Increase the usender's balance by the amount sent
        emit Deposit(msg.sender, msg.value); // Emit a deposit event for logging
    }

    // Emitted when a user withdraws ETH
    event Withdraw(address indexed user, uint256 amount);

    // Allow users to withdraw a specified amount of ETH
    function withdraw(uint256 amount) external {
        require(balances[msg.sender] >= amount, "Insufficient balance"); // Ensure the user has enough balance to withdraw
        balances[msg.sender] -= amount; // Subtract the withdrawn amount from the user's balance
        (bool success, ) = payable(msg.sender).call{value: amount}(""); // Transfer ETH to the user
        require(success, "Transfer failed");
        emit Withdraw(msg.sender, amount); // Emit a with draw event for logging
    }

    // Returns the balance of a given user address
    function getBalance(address user) external view returns (uint256) {
        return balances[user];
    }
}