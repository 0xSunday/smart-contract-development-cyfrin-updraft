// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract SimpleStorage {
    uint256 public myFavNum;

    struct person {
        uint256 fnum;
        string name;
    }

    person[] public listOFPeople;


    mapping(string => uint256) public nameToFavNum;
    function favNum(uint256 _myFavNum) public {
        myFavNum = _myFavNum;
    }

    function retrieve() public view returns (uint256) {
        return myFavNum;
    }

    function appPerson(uint256 fn, string memory nm) public {
        listOFPeople.push(person(fn, nm));
        nameToFavNum[nm]= fn;
    }
}
