# ExBlockchain

Elixir wrapper for the [Blockchain.info API](https://blockchain.info/api).


## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add `ex_blockchain` to your list of dependencies in `mix.exs`:

    ```elixir
    def deps do
      [{:ex_blockchain, "~> 0.1.0"}]
    end
    ```

  2. Ensure `ex_blockchain` is started before your application:

    ```elixir
    def application do
      [applications: [:ex_blockchain]]
    end
    ```

## Usage

### [Blockchain Data API](https://blockchain.info/api/blockchain_api)

```elixir
# retrieve a block
block = ExBlockchain.Blockchain.block("000000000000000016f9a2c3e0f4c1245ff24856a79c34806969f5084f410680")
```

```elixir
# retrieve a transaction
tx = ExBlockchain.Blockchain.tx("d4af240386cdacab4ca666d178afc88280b620ae308ae8d2585e9ab8fc664a94")
```

```elixir
# retrieve an address
address = ExBlockchain.Blockchain.address("1HS9RLmKvJ7D1ZYgfPExJZQZA1DMU3DEVd")
```

### [Exchange Rates API](https://blockchain.info/api/exchange_rates_api)

```elixir
# retrieves ticker of currency codes
ticker = ExBlockchain.ExchangeRates.ticker
```

```elixir
# retrieves `value` of `currency` in BTC
btc_value = ExBlockchain.ExchangeRates.to_btc("USD", 50)
```

### [Stats API](https://blockchain.info/api/charts_api)

```elixir
# retrieve stats from Blockchain.info homepage
stats = ExBlockchain.Stats.stats
```
