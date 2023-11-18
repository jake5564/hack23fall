// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import '@openzeppelin/contracts/token/ERC721/ERC721.sol';
import '@openzeppelin/contracts/access/Ownable.sol';

contract SimpleNFT is ERC721, Ownable {
    uint256 private tokenIdCounter;

    constructor(address initialOwner) ERC721("SimpleNFT", "SNFT") {
        tokenIdCounter = 0; // Start token IDs from 0, change to 1 if you want to start from 1
        _mint(initialOwner, tokenIdCounter); // Mint the initial token to the owner
        tokenIdCounter++;
    }

    function mint(address to) public onlyOwner {
        _safeMint(to, tokenIdCounter);
        tokenIdCounter++;
    }
}
