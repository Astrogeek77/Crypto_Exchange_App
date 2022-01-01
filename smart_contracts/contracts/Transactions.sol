//  SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0; //locking the working version

contract Transactions {
    // type specification is mandatory
    uint256 transactionCount;

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

    function addToBlockchain(
        address payable receiver,
        uint256 amount,
        string memory message,
        string memory keyword
    ) public payable{
        // incrementing the counter
        transactionCount++;

        // Push our transaction details to the array
        transactions.push(
            transferStruct(
                msg.sender,
                receiver,
                amount,
                message,
                block.timestamp,
                keyword
            )
        );

        // emitting tranfer to acctually perform the transaction
        emit Transfer(
            msg.sender,
            receiver,
            amount,
            message,
            block.timestamp,
            keyword
        );
    }

    function getAllTransactions()
        public
        view
        returns (transferStruct[] memory)
    {
        return transactions;
    }

    function getTransactionsCount() public view returns (uint256) {
        return transactionCount;
    }
}
