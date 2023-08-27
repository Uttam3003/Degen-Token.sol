// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenToken is ERC20, Ownable {
    mapping(uint256 => bool) public prizesRedeemed;
    uint256 public prizeCost = 100; // Cost of each prize in DT tokens

    constructor() ERC20("Degen Token", "DT") {
        _mint(msg.sender, 10000000 * 10**decimals()); // Mint initial supply (1 billion tokens)
    }

    // Mint new tokens (only the owner can call this function)
    function mint(address account, uint256 amount) public onlyOwner {
        _mint(account, amount);
    }

    // Transfer tokens
    function transfer(address recipient, uint256 amount) public override returns (bool) {
        _transfer(_msgSender(), recipient, amount);
        return true;
    }

    // Redeem tokens with bonus
    function redeemWithBonus(uint256 prizeId, uint256 bonusAmount) external returns (bool) {
        require(!prizesRedeemed[prizeId], "Prize already redeemed");
        require(balanceOf(msg.sender) >= prizeCost, "Insufficient balance");

        _burn(msg.sender, prizeCost); // Burn base prize cost
        _mint(msg.sender, bonusAmount); // Mint bonus tokens
        prizesRedeemed[prizeId] = true;
        emit RedeemWithBonus(msg.sender, prizeId, bonusAmount);

        return true;
    }
    
    // Burn tokens
    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }

    // Event to emit when tokens are redeemed with a bonus
    event RedeemWithBonus(address indexed account, uint256 prizeId, uint256 bonusAmount);
}

