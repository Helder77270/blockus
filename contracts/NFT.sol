// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;
import "@openzeppelin\contracts\token\ERC721\ERC721.sol";

contract NFT is ERC721{
    uint256 public fixedRate;
    constructor(string _name, string _symbol) ERC721(_name, _symbol){
        
    }
}