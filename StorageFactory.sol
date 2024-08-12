// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;
import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory {
    SimpleStorage[] public listOFSimpleStorage;
    SimpleStorage public simpleStorage;

    // SimpleStorage public mySimplestorage;

    function createSimpleStorage() public {
        simpleStorage = new SimpleStorage();
        listOFSimpleStorage.push(simpleStorage);
    }

    function sfStore(
        uint256 _simpleStorageContractIndex,
        uint256 _newNumber
    ) public {
        SimpleStorage mySimplestorage = listOFSimpleStorage[
            _simpleStorageContractIndex
        ];
        mySimplestorage.favNum(_newNumber);
    }

    function sfGet(
        uint256 _simpleStorageContractIndex
    ) public view returns (uint256) {
        SimpleStorage mySimplestorage = listOFSimpleStorage[
            _simpleStorageContractIndex
        ];
        return mySimplestorage.retrieve();
    }
}
