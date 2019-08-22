input = {
    "language": "Solidity",
    "sources": {
        "add.sol": {
            "content": data
        }
    },
    "settings":
    {
        "outputSelection": {
            "*": {
                "*": [
                    "metadata", "evm.bytecode", "evm.bytecode.sourceMap"
                ]
            }
        }
    }
}
