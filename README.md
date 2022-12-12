The contract <b>0x42fbd0cf3faa81a2716d78b8a7b99fc9bfb6caec</b> is on Polygon TestNet 

In this contract you can do 

1) <b>Create a token </b>(by metentiong token name,token supply,token decimal and token symbol)

2) <b>Increase supply of token </b>(only owner of contract can perform this)

3) <b>Decrease supply of token </b>(only owner of contract can perform this)

4) <b>Trasnfer token from owner to other address </b>(only owner of contract can pefrom this)

5) <b>Trasnfer token sender to reciver can also transfer token</b> (any one can perform this)

<b>There are several tests that can be performed to ensure that the BasicToken contract functions correctly. Here are some examples:</b>

1) Test that the <b> contract owner </b> is correctly set to the address that deploys the contract.

2) Test that the <b> transferFromCreator function </b> correctly transfers tokens from the contract owner to a specified address, and that the balances of the sender and recipient are updated accordingly.

3) Test that the <b> transferFromAnyToAny function </b> correctly transfers tokens from one address to another, and that the balances of the sender and recipient are updated accordingly.

4) Test that the <b> createToken function</b> can only be called by the contract owner, and that it correctly increases the total token supply and the balance of the owner.

5) Test that the <b> removeToken function</b> can only be called by the contract owner, and that it correctly decreases the total token supply and the balance of the owner.

6) Test that the <b> Transfer event </b>is correctly emitted when tokens are transferred or created/removed.
