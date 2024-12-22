
//Get funds 
//withdraw funds 
//set a min finding value is USD

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;
import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";

contract FundMe {
    function fund() public payable {
        // allow users to send money 
        //min amount $50
        require(msg.value > 1e18 , "Min 1 eth required"); //1e8 = 1eth = 1*10**8 wei
    }
    function getPrice() public view returns(uint256) {
        //address
        AggregatorV3Interface priceFeed = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
       (,int256 price,,,) =  priceFeed.latestRoundData();
       return uint256(price*1e10);
    }

    function getConversionRate() public{

    }

}