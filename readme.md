
[Presentación](https://www.canva.com/design/DAGjXXwRSIo/epC9k7ND4_i0gkNZq7nfew/edit?utm_content=DAGjXXwRSIo&utm_campaign=designshare&utm_medium=link2&utm_source=sharebutton)
[Transmisión de la Sesión](https://x.com/fruteroclub/status/1907151585152835671)
[Deploy de Smart Contract en Testnet con Zerion](https://www.loom.com/share/8f9aca828a204f04ba544b0fd60bbac5?sid=e55f7486-fb0a-441d-8320-3044037b7568)

# 1. **Herramientas de Desarrollo**

## Lenguajes de Programación para Desarrollar Smart Contracts
- **Solidity** - [Documentación de Solidity](https://docs.soliditylang.org/en/latest/types.html#value-types)
- **Rust**
- **Vyper**
- **Yul**

## Entorno de Desarrollo Integrado (IDEs) 
[Documentación de IDEs](https://ethereum.org/es/developers/docs/ides/)
- **Foundry** - [Documentación de Foundry](https://book.getfoundry.sh/)
- **Remix** - [Remix IDE](https://remix.ethereum.org/)
- **Hardhat** - [Documentación de Hardhat](https://hardhat.org/hardhat-runner/docs/getting-started#overview)
- **ScaffoldETH** - [ScaffoldETH](https://scaffoldeth.io/)
- **Testing de contratos**
- **Debugging**

## Getting Started With Foundry

1. **Instalar Foundryup** - [Guía de instalación](https://github.com/foundry-rs/foundry?tab=readme-ov-file#installation)
   ```bash
   curl -L https://foundry.paradigm.xyz | bash
   foundryup
   ```

2. **Crear un nuevo proyecto** - [Guía para crear un proyecto](https://book.getfoundry.sh/projects/creating-a-new-project)
   ```bash
   forge init hello_foundry
   ```

3. **Construir el proyecto** 
   ```bash
   forge build
   ```

4. **Ejecutar las pruebas**
   ```bash
   forge test
   ```

5. **Ejecutar Anvil (nodo de desarrollo local rápido de Ethereum)** - [Documentación de Anvil](https://book.getfoundry.sh/anvil/)
   ```bash
   anvil --fork-url https://eth.merkle.io
   ```

6. **Desplegar en nodo local** - [Guía de despliegue](https://book.getfoundry.sh/forge/deploying#deploying)
   ```bash
   forge create --rpc-url <your_rpc_url> --private-key <your_private_key> src/MyContract.sol:MyContract
   ```

7. **Desplegar en testnet**

---

# 2. **Fundamentos de Solidity**

## Tipos de datos primitivos
- `uint`, `int`, `bool`, `address`, `bytes`, `string`
  - [Documentación de tipos de datos](https://docs.soliditylang.org/en/latest/types.html#value-types)

## Tipos de datos compuestos
- **Arrays**, **Structs**, **Mappings**
  - [Tipos de referencia](https://docs.soliditylang.org/en/latest/types.html#reference-types)
  - [Tipos de Mappings](https://docs.soliditylang.org/en/latest/types.html#mapping-types)

## Funciones
- [Visibilidad de funciones](https://docs.soliditylang.org/en/latest/contracts.html#function-visibility)

## Storage vs Memory vs Calldata
- [Guía de uso de memoria y almacenamiento](https://updraft.cyfrin.io/courses/solidity/simple-storage/solidity-memory-storage-calldata)

## Estructura del EVM y su impacto en los tipos de datos
- [Documentación sobre el EVM](https://ethereum.org/es/developers/docs/evm/)

---

# 3. **Gestión de Transacciones y Estructura de Bloques**

## Variables globales
- `msg.sender`, `msg.value`, `block.timestamp`
  - [Documentación sobre variables globales](https://docs.soliditylang.org/en/v0.8.23/units-and-global-variables.html#special-variables-and-functions)
  - [Miembros de tipos de address](https://docs.soliditylang.org/en/latest/units-and-global-variables.html#members-of-address-types)

## `tx.origin` vs `msg.sender` y vulnerabilidades

## Recepción y manipulación de Ether
- Funciones `payable`, `fallback`, `receive`
  - [Ether Units](https://docs.soliditylang.org/en/latest/units-and-global-variables.html#ether-units)
  - [Receive Ether Function](https://docs.soliditylang.org/en/latest/contracts.html#receive-ether-function)
  - [Fallback Function](https://docs.soliditylang.org/en/latest/contracts.html#fallback-function)


---

# 4. **Introducción a Gas y su Costo**

## Cómo calcular gas
- [Monitoreo de tarifas de gas](https://ethereum.org/es/developers/docs/gas/#monitoring-gas-fees)
- [Etherscan Gas Tracker](https://etherscan.io/gastracker)

## Análisis de costos por operación
- [Opcodes y Storage](https://www.evm.codes/)
- [Ethereum Yellow Paper](https://ethereum.github.io/yellowpaper/paper.pdf) (pág 31)

## Modelo de gas en Ethereum vs L2

- [Layer 2 en Ethereum](https://ethereum.org/es/layer-2/#layer-2-powered-by-ethereum/) 

## **Técnicas de Optimización de Gas**
- Uso eficiente de `storage` y `memory`
- Reducción de operaciones de `SSTORE` y `SLOAD`
- Uso de `unchecked` y `assembly` para ahorro de gas
- Eliminación de `require` innecesarios
- Diseño de estructuras de datos eficientes
