// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

import {Hasher} from "./crypto/Hasher.sol";

contract IPubKey {
    struct PubKey {
        uint256 x;
        uint256 y;
    }
}

contract IMessage {
    uint8 constant MESSAGE_DATA_LENGTH = 7;

    struct Message {
        uint256[MESSAGE_DATA_LENGTH] data;
    }
}

contract DomainObjs is IMessage, Hasher, IPubKey {
    // struct StateLeaf {
    //     PubKey pubKey;
    //     uint256 voiceCreditBalance;
    //     uint256 voteOptionTreeRoot;
    //     uint256 nonce;
    //     uint256 c10;
    //     uint256 c11;
    //     uint256 c20;
    //     uint256 c21;
    //     uint256 xIncrement;
    // }
    // function hashStateLeaf(
    //     StateLeaf memory _stateLeaf
    // ) public pure returns (uint256) {
    //     uint256[5] memory m;
    //     m[0] = _stateLeaf.pubKey.x;
    //     m[1] = _stateLeaf.pubKey.y;
    //     m[2] = _stateLeaf.voiceCreditBalance;
    //     m[3] = _stateLeaf.voteOptionTreeRoot;
    //     m[4] = _stateLeaf.nonce;
    //     uint256[5] memory n;
    //     n[0] = _stateLeaf.c10;
    //     n[1] = _stateLeaf.c11;
    //     n[2] = _stateLeaf.c20;
    //     n[3] = _stateLeaf.c21;
    //     n[4] = _stateLeaf.xIncrement;
    //     return hash2([hash5(m), hash5(n)]);
    // }
    // function hashDeactivateLeaf(
    //     uint256[6] memory cAndPubkey
    // ) public pure returns (uint256) {
    //     uint256[5] memory m;
    //     m[0] = cAndPubkey[0];
    //     m[1] = cAndPubkey[1];
    //     m[2] = cAndPubkey[2];
    //     m[3] = cAndPubkey[3];
    //     m[4] = 0;
    //     uint256[5] memory n;
    //     n[0] = cAndPubkey[4];
    //     n[1] = cAndPubkey[5];
    //     n[2] = 0;
    //     n[3] = 0;
    //     n[4] = 0;
    //     return hash2([hash5(m), hash5(n)]);
    // }
}
