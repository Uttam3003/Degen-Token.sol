# DegenToken Smart Contract

The DegenToken smart contract is an ERC20 token that extends the functionality of the OpenZeppelin's ERC20 contract. It allows users to mint new tokens, transfer tokens to other addresses, redeem tokens with a bonus, and burn tokens. Additionally, the contract supports the ownership model, where the owner has certain privileges.

# Features

1. Token Minting: The contract owner can mint new tokens, increasing the total token supply.

2. Token Transfer: Users can transfer tokens to other addresses using the transfer function inherited from the ERC20 contract.

3. Token Redemption with Bonus: Users can redeem tokens with a bonus using the redeemWithBonus function. This involves burning a certain number of tokens and then minting additional tokens as a bonus.

4. Token Burning: Users can burn tokens to decrease their balance using the burn function.

5. Ownership Control: The contract inherits from the Ownable contract, allowing the owner to perform certain actions, such as minting tokens and changing contract parameters.

6. Prize Redemption Tracking: The contract uses a mapping to keep track of whether a particular prize has been redeemed or not.

# Usage

## Contract Deployment

Deploy the DegenToken smart contract to the Ethereum blockchain. The contract will be assigned the name "Degen Token" with the symbol "DT."

## Token Minting

1. The contract owner can call the mint function to mint new tokens for a specified address.

2. Provide the recipient's Ethereum address and the amount of tokens to be minted as function parameters.

## Token Transfer

1. Users can transfer tokens to other addresses using the transfer function. Provide the recipient's address and the amount of tokens to be transferred.
   
2. Token Redemption with Bonus
   
3. Users can redeem tokens with a bonus using the redeemWithBonus function.

4. Provide the prize ID (for tracking), and the amount of bonus tokens to be minted.

## Token Burning

1. Users can burn tokens using the burn function to reduce their token balance. Provide the amount of tokens to be burned.

## Author

UTTAM KUMAR

## LICENCE

This project is under MIT licence.
