// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HolaMundo {
    string public mensaje;

    constructor() {
        mensaje = "Hola, Mundo!";
    }

    function obtenerMensaje() public view returns (string memory) {
        return mensaje;
    }

    function actualizarMensaje(string memory _nuevoMensaje) public {
        mensaje = _nuevoMensaje;
    }
}
