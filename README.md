# Rock Paper Scissors Game Contract

This Solidity contract implements a decentralized Rock Paper Scissors game. It allows players to compete against the CPU using pseudo-random techniques.

## Installation

To install and run this contract, you will need to have Node.js and npm installed.

1. Clone this repository: `git clone https://github.com/rosseti/rock-paper-scissors-solidity.git`
2. Install the dependencies: `npm install`
3. Compile the contract: `yarn compile`
4. Serve local node: `yarn serve`
4. Deploy the contract to a local Ethereum network: `yarn contract:deploy`

## Usage

Once the contract is deployed, you can interact with it using the following functions:

- `play(uint8 choice)`: Allows a player to make a move (rock, paper, or scissors) in the game. The CPU plays using pseudo-random factors to determine its move, and the function returns the winner.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more information.
