pragma solidity ^0.6.0;

// The contract name is BasicToken
contract BasicToken {

    // The address that will own and manage the contract
    address public owner;

    // Mapping from addresses to their token balances
    mapping(address => uint) public balances;

    // The total number of tokens in circulation
    uint public totalSupply;

    // The name of the token
    string public name;

    // The symbol of the token
    string public symbol;

    // The number of decimals used for the token
    uint8 public decimals;

    // The constructor sets the initial total supply and name of the token
    constructor(uint _totalSupply, string memory _name, string memory _symbol, uint8 _decimals) public {
        totalSupply = _totalSupply;
        name = _name;
        symbol = _symbol;
        decimals = _decimals;
        owner = msg.sender;
        // The contract creator is the initial owner of all the tokens
        balances[msg.sender] = totalSupply;
    }


        // Event to be triggered when tokens are transferred
    event Transfer(
        address indexed from,
        address indexed to,
        uint256 value
    );


    // The function for transferring tokens from one account to another
    function transferFromCreator(address _to, uint _value) public {
        // Check if the sender has enough tokens to transfer
        require(balances[msg.sender] >= _value, "Insufficient balance.");

        // Check if the recipient account is not the zero address
        require(_to != address(0), "Invalid recipient.");

        // Transfer the tokens and update the balances
        balances[msg.sender] -= _value;
        balances[_to] += _value;
         emit Transfer(msg.sender, _to, _value);
    }
    function transferFromAnyToAny(address sender,address recipient,uint amount) public returns (bool) {
        balances[sender] -= amount;
        balances[recipient] += amount;
        emit Transfer(sender, recipient, amount);
        return true;
    }

// Function to create new tokens (to increase token supply) 
    function createToken(uint amount) public{
        require(msg.sender == owner, "Only the contract owner can create new tokens");
        balances[msg.sender]+=amount;
        totalSupply+=amount;
        emit Transfer(address(0), msg.sender, amount);
    }

// Function to remove tokens (to decrease supply)    
    function removeToken(uint amount) public{
        require(msg.sender == owner, "Only the contract owner can  new tremoveokens");
        require(totalSupply>0,"all token are removed");
        if(totalSupply<=amount){
            totalSupply=0;
            balances[msg.sender]=0;
        }
        else{
             balances[msg.sender]-=amount;
        totalSupply-=amount;
        }
        emit Transfer( msg.sender,address(0), amount);
    }
}


//Contract Address ->  0x42fbd0cf3faa81a2716d78b8a7b99fc9bfb6caec
