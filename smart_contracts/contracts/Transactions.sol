//  SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract Transactions {
    // type specification is mandatory
    uint256 transactionCounter;

    // An event defined for a praticular transaction
    event Transfer(
        address from,
        address receiver,
        uint256 amount,
        string message,
        uint256 timestamp,
        string keyword
    );

    // a struct blueprint for defining our transfer array later
    struct transferStruct {
        address sender;
        address receiver;
        uint256 amount;
        string message;
        uint256 timestamp;
        string keyword;
    }

    // array for storing our transactions
    transferStruct[] transactions;

    function addToBlockchain() public {}

    function getAllTransactions()
        public
        view
        returns (transferStruct[] memory)
    {}

    function getTransactionsCount() public view returns (uint256) {}
}
