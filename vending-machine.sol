// SPDX-License-Identifier: MIT

pragma solidity >=0.8.2 <0.9.0;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */
contract VendingMachine {
    address public owner;
    mapping (address => uint) public donutBalances;

    constructor() {
        owner = msg.sender;
        donutBalances[address(this)] = 100;
    }

    function getVendingMachineBalance() public view returns (uint) {
        return donutBalances[address(this)];
    }

    function restock(uint amount) public {
        require(msg.sender == owner, "Only the owner can restock this machine");
        donutBalances[address(this)] +=  amount;
    } 

    function purchase(uint amount) public payable {
        require(msg.value >= amount * 2 ether, "You must pay alteast 2 ether per donout");
        require(donutBalances[address(this)] >= amount, "OOPS! Not enough donuts");
        donutBalances[address(this)] -= amount;
        donutBalances[msg.sender] += amount;
    }
}