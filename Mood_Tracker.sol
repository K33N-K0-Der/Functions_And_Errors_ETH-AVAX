// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MoodTracker {
    enum Mood { Happy, Sad, Neutral }
    
    address public owner;
    Mood public currentMood;
    uint public lastUpdateTime;

    constructor() {
        owner = msg.sender;
        currentMood = Mood.Neutral;
    }

    function setMood(Mood _mood) public {
        require(msg.sender == owner, "Only owner can set mood");
        require(uint(_mood) <= 2, "Invalid mood");

        if (block.timestamp - lastUpdateTime < 1 hours) {
            revert("Can only update mood once per hour");
        }

        currentMood = _mood;
        lastUpdateTime = block.timestamp;

        assert(currentMood == _mood);
    }

    function getMood() public view returns (string memory) {
        if (currentMood == Mood.Happy) return "Happy";
        if (currentMood == Mood.Sad) return "Sad";
        return "Neutral";
    }
}
