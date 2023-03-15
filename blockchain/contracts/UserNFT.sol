// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "hardhat/console.sol";

/**
 * @title Owner
 * @dev Set & change owner
 */

import "./Game.sol";

import "@openzeppelin/contracts/token/ERC721/IERC721.sol";

contract Game is PokemonNft {
    IERC721 public avatarNft;
    
    mapping(address => bool) public hasAvatar;
    
    constructor(address _nftAddress) {
        avatarNft = IERC721(_nftAddress);
    }
    
    function play() public view returns (string memory) {
        address player = msg.sender;
        if (!hasAvatar[player]) {
            return "You need an avatar to play this game. Please mint an avatar NFT first.";
        }
        // The game logic goes here
        return "Welcome to the game!";
    }
    
    // function mintAvatar() public {
    //     address player = msg.sender;
    //     require(!hasAvatar[player], "You already have an avatar NFT.");
    //     avatarNft.mint(player);
    //     hasAvatar[player] = true;
    // }
}
