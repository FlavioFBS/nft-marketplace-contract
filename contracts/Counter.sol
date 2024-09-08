// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/**
 * @title Librería Counter
 * @dev Proporciona funciones para implementar contadores que solo pueden incrementar o decrementar en 1
 */
library Counter {
    struct CounterStorage {
        uint256 _value; // valor default: 0
    }

    function current(CounterStorage storage counter) internal view returns (uint256) {
        return counter._value;
    }

    function increment(CounterStorage storage counter) internal {
        unchecked {
            counter._value += 1;
        }
    }

    function decrement(CounterStorage storage counter) internal {
        uint256 value = counter._value;
        require(value > 0, "Counter: decremento desbordado");
        unchecked {
            counter._value = value - 1;
        }
    }

    function reset(CounterStorage storage counter) internal {
        counter._value = 0;
    }
}