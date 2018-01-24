pragma solidity ^0.4.17;

contract Adoption {
    address[16] public adopters;
    bool[16] public sales;

    function adopt(uint petId) public returns (uint) {
        require(petId >= 0 && petId <= 15);

        adopters[petId] = msg.sender;
        sales[petId] = true;

        return petId;
    }

    function getAdopters() public view returns (address[16]) {
        return adopters;
    }

    function getOnSales() public view returns (bool[16]) {
        return sales;
    }
}

