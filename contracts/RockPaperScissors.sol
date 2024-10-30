// SPDX-License-Identifier: MIT

pragma solidity ^0.8.27;

import "@openzeppelin/contracts/utils/Strings.sol";

contract RockPaperScissors {
    enum Gesture {
        ROCK,
        PAPER,
        SCISSORS
    }

    function random() private view returns (Gesture) {
        uint256 randomNum = uint256(
            keccak256(
                abi.encodePacked(
                    block.timestamp,
                    block.number,
                    block.chainid,
                    block.coinbase
                )
            )
        ) % 3;
        return Gesture(randomNum);
    }

    function choiceToString(Gesture choice) internal pure returns (string memory) {
        return choice == Gesture.ROCK
            ? "ROCK"
            : choice == Gesture.PAPER
            ? "PAPER"
            : "SCISSORS";
    }

    function play(Gesture playerChoice) public view returns (string memory) {
        Gesture computerChoice = random();

        string memory choices = string(
            abi.encodePacked(
                choiceToString(playerChoice),
                " vs ",
                choiceToString(computerChoice)
            )
        );

        string memory result = determineWinner(playerChoice, computerChoice);

        return string.concat(choices, ". ", result);
    }

    function determineWinner(Gesture playerChoice, Gesture computerChoice)
        public
        pure
        returns (string memory)
    {
        if (playerChoice == computerChoice) {
            return "It was a draw.";
        } else if (
            (playerChoice == Gesture.PAPER && computerChoice == Gesture.ROCK) ||
            (playerChoice == Gesture.ROCK && computerChoice == Gesture.SCISSORS) ||
            (playerChoice == Gesture.SCISSORS && computerChoice == Gesture.PAPER)
        ) {
            return "You win.";
        }

        return "CPU wins.";
    }
}

