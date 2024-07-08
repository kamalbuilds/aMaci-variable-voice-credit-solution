// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

abstract contract MerkleZeros {
    uint256[9] internal zeros;

    // Quinary tree zeros (0)
    constructor() {
        zeros[0] = uint256(0);
        zeros[1] = uint256(
            14655542659562014735865511769057053982292279840403315552050801315682099828156
        );
        zeros[2] = uint256(
            19261153649140605024552417994922546473530072875902678653210025980873274131905
        );
        zeros[3] = uint256(
            21526503558325068664033192388586640128492121680588893182274749683522508994597
        );
        zeros[4] = uint256(
            20017764101928005973906869479218555869286328459998999367935018992260318153770
        );
        zeros[5] = uint256(
            16998355316577652097112514691750893516081130026395813155204269482715045879598
        );
        zeros[6] = uint256(
            2612442706402737973181840577010736087708621987282725873936541279764292204086
        );
        zeros[7] = uint256(
            17716535433480122581515618850811568065658392066947958324371350481921422579201
        );
        zeros[8] = uint256(
            17437916409890180001398333108882255895598851862997171508841759030332444017770
        );
    }
}
