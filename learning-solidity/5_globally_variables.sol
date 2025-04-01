// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;


contract GloballyVariables{

    //block

    uint public number = block.number;
    uint public blocktimestamp = block.timestamp;

    //msg
    address public sender = msg.sender;
    uint public value = msg.value;

    //tx

    uint public txPrice = tx.gasprice;
    address public txOrigin = tx.origin;
    
    address public owner;
    int public numero;

    constructor() {
        owner = msg.sender;
    }

    // Función para hacer algo solo si el origin es el dueño.
    // Sin embargo, un atacante podría crear un contrato que invoque esta función en nombre de la cuenta del propietario, lo que le permitiría ejecutar la función incluso si no es el propietario.
    function restrictedVulnerability() public {
        require(tx.origin == owner, "Solo el propietario puede ejecutar esto.");
        numero = 3;
    }

    // Función solo accesible para el propietario
    //Ahora, solo el propietario puede ejecutar la función restricted, incluso si otro contrato llama a esta función en su nombre.
    function restricted() public {
        require(msg.sender == owner, "Solo el propietario puede ejecutar esto.");
        // Lógica del contrato
    }


}