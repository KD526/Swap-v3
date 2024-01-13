// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

 import "@openzeppelin/contracts/token/ERC20/ERC20.sol";


 contract DummyToken {

    constructor(string memory name, string memory symbol) ERC20(name, symbol) {
        _mint(msg.sender, 1000000 * 10 ** 18);
    }

 }


 //DEX contract & logic
 contract SwapDex {

    //tokens to be initialized
    string[] public tokens = ["Tether USD", "BNB", "USDC", "stETH", 
                            "ChainZ", "SwyCoin", "Matic", "Solana", "Dai"];

     //map tokens to instance
     mapping(string=>ERC20) public tokenInstanceMap;


     uint256 ethValue = 1000000000000;    


     struct History  {
        uint256 historyId;
        string tokenA;
        string tokenB;
        uint256 inputValue;
        uint256 outputValue;
        address userAdrr;
     }                   
 }
