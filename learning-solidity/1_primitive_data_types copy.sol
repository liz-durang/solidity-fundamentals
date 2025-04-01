// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;


contract PrimitiveDataTypes{

    //Booleano
    bool flagVerdadero = true;
    bool flagFalso = false;

    //**************************************/

    //Enteros con signo 
    
    //* 256 bits 
    int number1 = -8;

    //*8 bits
    int8 number2 = -8;

    int16 number3 = -8;

    //*256 bits
    int256 number10 = -8;

    //Enteros sin signo

    //* 256 bits 
    uint number4 = 8;

    //*8 bits
    uint8 number5 = 8;

    //*32 bits
    uint32 number6 = 8;

    //Solidity es un lenguaje fuertemente tipado. 
    //Todas las variables deben declararse con un tipo específico y no pueden cambiar de tipo después de ser definidas,
    //tiene que haber una conversión explícita
    
    //Conversiones entre Tipos de Datos 
    int numNegative = -6;
    uint public numPositive = uint(numNegative); 

    //**************************************/

    //Address - 20 bytes - Direcciones Ethereum 

    //* Address payable - Puede recibir Ether 
    address yourAddres;
    address payable myaddress; 
    
    //* Address del contract acount 
    address public addressAcount = address(this);

    //**************************************/

    //De tamaño fijo bytes1 - bytes32
    //Más eficiente, acceso directo a los bytes

    //1 byte - 8 bits 
    bytes1 data = "9";

    bytes2 data2 = "90";

    bytes32 data3 = "Hello world";

    //Propiedades de bytes 
    

    //*Tamaño
    uint public lenghtData1 = data.length;

    uint public lenghtData2 = data2.length;

    // De tamaño variable bytes
    bytes data5 = "Hola";

    //String 
    string public hello = "Hello world";

}