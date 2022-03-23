// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.5.0;

contract Adoption {
	address[16] public adopters; // public gives it automatic getter method, but array need key
	string name;

	constructor() public {
		name = "Pet Shop!";
	}

	// for testing, should be redundant
	function getAdopter(uint petId) public view returns (address) {
		require(0 <= petId && petId < 16);
		return adopters[petId];	
	}

	function getName() public view returns (string memory) {
		return name;
	}

	function adopt(uint petId) public returns (uint) {
		require(petId >= 0 && petId < 16);
		adopters[petId] = msg.sender;

		return petId;
	}

	function getAdopters() public view returns (address[16] memory) {
		return adopters;
	}
	
}

