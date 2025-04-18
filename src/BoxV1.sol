// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
// storage is stored in proxy not implementation contract
//proxy (borrowing funcs) -> implementation
// if implementation has a constructor that sets num = 1 proxy will have that as 0 bec proxy doesnt use constructor
//so proxy -> deploy implementation -> call intializer(will be my constructor but will be called on proxy) function 

contract BoxV1 is Initializable,OwnableUpgradeable,UUPSUpgradeable{
    uint256 internal number; // internal means only its child can access it

    constructor(){
        _disableInitializers();
    }

    function intialize() public initializer{
        __Ownable_init(msg.sender);
        __UUPSUpgradeable_init();
    }
    function getNumber() external view returns(uint256){
        return number;
    }
    function version() external pure returns(uint256){
        return 1;
    }
    //wont be making this function because right now idk how to make DAO
    function _authorizeUpgrade(address newImplementation) internal override{}





}