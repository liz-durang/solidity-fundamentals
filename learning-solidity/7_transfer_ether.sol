// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EtherVault {

    // Dirección del propietario del contrato
    address public owner;

    // Evento para registrar depósitos y retiros
    event Deposit(address indexed sender, uint amount);
    event Withdraw(address indexed to, uint amount);

    // Modificador para verificar que solo el propietario puede ejecutar ciertas funciones
    modifier onlyOwner() {
        require(msg.sender == owner, "You are not the owner");
        _;
    }

    // Constructor que establece al propietario del contrato
    constructor() {
        owner = msg.sender;
    }

    // Función receive para recibir Ether sin datos
    receive() external payable {
        emit Deposit(msg.sender, msg.value);
    }

    // Función fallback para manejar Ether con datos o transferencias incorrectas
    fallback() external payable {
        emit Deposit(msg.sender, msg.value);
    }

    // Función para retirar Ether del contrato
    function withdraw(uint amount) external onlyOwner {
        require(address(this).balance >= amount, "Insufficient balance");
        
        // Transferir el Ether al propietario
        payable(owner).transfer(amount);
        emit Withdraw(owner, amount);
    }

    // Ver el saldo actual del contrato
    function getBalance() public view returns (uint) {
        return address(this).balance;
    }

    // Función para transferir Ether desde el contrato a una dirección específica
    function transfer(address payable recipient, uint amount) external onlyOwner {
        require(address(this).balance >= amount, "Insufficient balance");
        recipient.transfer(amount);
    }
}
