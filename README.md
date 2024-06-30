# Functions_And_Errors_ETH-AVAX
# MoodTracker Smart Contract

A simple Ethereum smart contract for tracking and managing mood states.

## Description

MoodTracker is a basic Solidity smart contract designed to demonstrate the use of `require()`, `assert()`, and `revert()` statements. It allows an owner to set and retrieve their current mood, with built-in time restrictions and access controls.

## Getting Started

### Installing

* Clone this repository or copy the `MoodTracker.sol` file to your local machine.
* Ensure you have access to the Remix IDE (https://remix.ethereum.org/) or any Ethereum development environment.

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

* Create a new file in Remix and name it `MoodTracker.sol`.
* Copy and paste the provided smart contract code into the file.
* Compile the contract by clicking on the "Solidity Compiler" tab and then clicking "Compile MoodTracker.sol".
* Deploy the contract by clicking on the "Deploy & Run Transactions" tab, selecting "MoodTracker" from the dropdown, and clicking "Deploy".
* Once deployed, you can interact with the contract by calling its functions:
  - Use `setMood(uint8 _mood)` to set a new mood (0 for Happy, 1 for Sad, 2 for Neutral)
  - Use `getMood()` to retrieve the current mood as a string
  - Use `currentMood()` to get the current mood as an integer
  - `lastUpdateTime()` and `owner()` are also available for viewing
// Example: Setting the mood to Happy
setMood(0)
Copy
## Help

Any advise for common problems or issues.
If you receive a "Only owner can set mood" error, ensure you're using the account that deployed the contract.
If you can't update the mood, wait for at least an hour between updates.
Copy
## Authors

Abhishek Singh
