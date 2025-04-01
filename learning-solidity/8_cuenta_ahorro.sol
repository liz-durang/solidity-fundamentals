// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract CuentaAhorro {
    
    //***CuentaAhorro 

    struct Persona {
        string nombre;
        uint8 edad;
        uint saldo;
    }

    // Mapeo que relaciona la dirección con la persona
    mapping(address => Persona) public personas;

    // Crear una nueva persona (solo se requiere nombre y edad)
    function createPersona(string memory _nombre, uint8 _edad) public {
        // Verificar si ya existe una persona con esta dirección
        require(bytes(personas[msg.sender].nombre).length == 0, "Persona ya existe");

        // Crear la nueva persona con saldo inicial de 0
        personas[msg.sender] = Persona(_nombre, _edad, 0);
    }

    // Función para ingresar saldo
    function store(uint _deposito) public {
        // Verificar que el depósito sea positivo
        require(_deposito > 0, "El deposito debe ser mayor a 0");

        // Actualizar saldo directamente
        personas[msg.sender].saldo += _deposito;
    }

    // Función para retirar saldo
    function retrieve(uint _retiro) public {
        // Verificar que el saldo sea suficiente
        require(personas[msg.sender].saldo >= _retiro, "Saldo insuficiente");

        // Restar el saldo directamente
        personas[msg.sender].saldo -= _retiro;
    }

    // Función para consultar el saldo
    function getSaldo() public view returns (uint) {
        return personas[msg.sender].saldo;
    }
}
