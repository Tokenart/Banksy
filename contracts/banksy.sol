// SPDX-License-Identifier: MIT

pragma solidity 0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "hardhat/console.sol";

contract Banksy is ERC721URIStorage, Ownable {
    string public baseURI;

    constructor(
        string memory _name,
        string memory _symbole,
        string memory _URI
    ) ERC721("Banksy's Wharf Rat", "BWR") {
        _safeMint(msg.sender, 1);
        _setTokenURI(1, _URI);
    }

    function _baseURI() internal view virtual override returns (string memory) {
        return baseURI;
    }

    function setBaseURI(string memory  _newBaseURI) public onlyOwner {
        baseURI = _newBaseURI;
    }
}
