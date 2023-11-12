// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract PogCoin is ERC20, ERC20Burnable, Ownable {
    constructor(address initialOwner)
        ERC20("PogCoin", "PGC")
        Ownable(initialOwner)
    {}

    function mint(address to, uint amount) public onlyOwner {
        _mint(to, amount);
    }

}