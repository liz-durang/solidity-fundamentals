pragma solidity ^0.8.0;


contract Funciones{

    //***Calculadora 

    //Variables de estado
    int operador1;
    int operador2; 
    int resultado;
    uint operador3;

    //Funciones

    //Recibe n parámetros
    function asignarDatos(int _parametro1, int _parametro2) public{
        operador1 = _parametro1;
        operador2 = _parametro2;
    }

    //No recibe parámetros
    function sumar()public {
        resultado = operador1 + operador2; 
    }

    bytes res = "El resultado es: ";
    //Regresa un valor
    function obtenerResultado() public returns (int){
        return resultado;
    }

    //Regresa múltiples valores
    function obtenerValores() public returns (int, int, int){
        return (operador1, operador2, resultado);
    }   

    address public sender; 
    //Constructor
    constructor(int _p1, int _p2){
        sender = msg.sender; 
        asignarDatos(_p1, _p2);
    }

     //Modifiers - Se debe cumplir esta condición antes de ejecutar la función
    modifier onlyAdmin(){
        require(msg.sender == 0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db , "No eres el Admin");
        _;
    }

    function set(uint x) public onlyAdmin{
        operador3 = x;
    }

    //Eventos - Notifica el status de la blockchain al exterior
    event AgregarPuntosVIP(int _p1, address owner);

    //Storage, memory, calldata
    struct Person{
        string name;
        uint8 age;
    }

    Person[] public listofPeople; // []

    
    function addPerson(string memory _name, uint8 _age) public{
        listofPeople.push(Person(_name, _age));
    }

}