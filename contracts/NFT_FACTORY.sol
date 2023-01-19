//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";
import "NFT.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract GaleryFactory is Ownable{
    NFT[] private _nfts;
    event NewNFT(string, address);

    constructor() {}

    function createNFT(string memory _name) public returns (NFT){
        NFT nft = new NFT(_name, _msgSender());
        _nfts.push(nft);
        emit NewNFT(_name, _msgSender());

        return nft;
    }

    function getNFT(uint256 id) public view returns(NFT){
        return _nfts[id];
    }
    
}