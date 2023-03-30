Vending machine is an interesting thing to get started with the basics of Solidity. So, we are going to write a code in Solidity that will help us build a smart contract for a Donut Vending Machine!

Let us start off by going to Remix which is an IDE for the language of Solidity. It is used to write Smart Contracts for the Blockchain. In terms of implementation coding for ERC-20 tokens, the six basic coding functions are:

1. getBalance
2. purchase
3. restock


Solidity 0.6.8 introduces SPDX license identifiers so developers can specify the license the contract uses. SPDX license identifiers should be added to the top of contract files. The following identifier should be added to the top of your contract:

The next step is to create a contract. In Solidity, we write a smart contract by typing the keyword contract followed by the name of the contract. Let us proceed by naming our contract VendingMachine. 

We will write our further code in the curly brackets as all the functions and variables would be a part of it. Next, we define the variables that will be a part of the contract that is:

address public owner;
mapping(address => uint) public donutBalances;

Here, address refers to the wallet address of the owner and mapping refers to a keyword where we can map one type of variable to be associated with another.

So, donutBalances is a mapping where number of donuts will be associated with the address. Next, we go on to create a constructor that will be automatically executed when deployment will occur on the Ethereum Blockchain.

The creation of first function is getBalance(). It is used to get the balance of donuts that are left in the Vending Machine.

donutBalances[address(this)] represents the balance of the donuts that are associated with the current Ethereum account.

Function that is next is called restock(). It is restricted only to the owner and thus, the keyword comes as require.

The donutBalances gets updated when the amount is entered by the owner to be incremented.


The last function is the purchase function that actually helps the person or the customer to purchase a donut.

The price for one donut that we entered is 0.5 ETH. Thus, the msg.value should be equal to the amount multiplied by 0.5 ETH.

Also, the Vending machine should have the number of donuts entered by the customer. When both of these requirements are fulfilled, then the donutBalances of this address gets deducted by the amount.

Also, the msg.sender’s donutBalances will get updated by the number of donuts purchased.

Finally, the code is done. Now we, proceed to compile it. The Remix automatically compiles the code and shows if there is some error or not. Then, we go ahead to Deploy the code.

Make sure that we are in Deploy and Run Transactions tab. Then the environment to be selected is Javascript VM. The contract should be our Vending Machine contract.

Deploy it now, and you will get the deployed contract as follows. Also, now whenever the customer has purchased the donuts, the donutBalances gets updated when the function is called.
