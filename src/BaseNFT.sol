// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "openzeppelin-contracts/contracts/token/ERC721/ERC721.sol";

contract BaseNFT is ERC721 {
    string public baseURI;
    uint public currentTokenId;
    uint public MAX_SUPPLY = 10000;
    uint public MINT_PRICE = 0.01 ether;
    uint public MAX_MINT = 2;

    constructor(
        string memory name_,
        string memory symbol_,
        string memory _baseURI
    ) ERC721(name_, symbol_) {
        currentTokenId++; // remove the 0 tokenId
        baseURI = _baseURI;
    }

    function mint(
        address to,
        uint256 tokenId
    ) public payable returns (uint256) {
        require(msg.value >= MINT_PRICE, "Not enough ETH");
        require(tokenId < MAX_SUPPLY, "Max supply reached");
        _mint(to, tokenId);

        currentTokenId++;
        return tokenId;
    }
}
