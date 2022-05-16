pragma solidity >=0.7.0 <0.9.0;
/* a program to automatically get your will from your parents */

contract WillDecision{
    bool isAlive = true; //checking that the person you are inheriting money from is alive or not

    function validateIsAlive() public view returns(bool){
        if (isAlive == true) {
            return true;
        }
        else {
            return false;
        }

    }
    //Initializing wallet balance to initially 10
    uint public walletBalance = 10;
    function transferAmount() public returns(uint){
        if(isAlive){
            walletBalance = walletBalance + 10;    //if the person is alive then the will amount will gets transferred only once to the son/daughter
            return walletBalance;
        }
        else{
            return walletBalance;
        }
    }
}
