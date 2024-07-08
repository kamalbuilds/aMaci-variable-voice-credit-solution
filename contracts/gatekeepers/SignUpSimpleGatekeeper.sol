// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

import {Ownable} from "../Ownable.sol";
import {SignUpGatekeeper} from "./SignUpGatekeeper.sol";

contract SignUpSimpleGatekeeper is SignUpGatekeeper, Ownable {
    address public maci;

    bool private on = true;

    uint256 private max = 3;

    mapping(address => uint256) public registered;

    constructor() Ownable() {}

    function toggle(bool _on) public onlyOwner {
        on = _on;
    }

    function set(uint256 _max) public onlyOwner {
        max = _max;
    }

    /*
     * Adds an uninitialised MACI instance to allow for token singups
     * @param _maci The MACI contract interface to be stored
     */
    function setMaciInstance(address _maci) public override onlyOwner {
        maci = _maci;
    }

    /*
     * Registers the user if they own the token with the token ID encoded in
     * _data. Throws if the user is does not own the token or if the token has
     * already been used to sign up.
     * @param _user The user's Ethereum address.
     * @param _data The ABI-encoded tokenId as a uint256.
     */
    function register(
        address _user,
        bytes memory
    ) public override returns (bool, uint256) {
        require(on);
        require(
            maci == msg.sender,
            "SignUpGatekeeper: only specified MACI instance can call this function"
        );
        require(registered[_user] < max, "SignUpGatekeeper: registered");
        registered[_user]++;
        return (true, 100);
    }
}
