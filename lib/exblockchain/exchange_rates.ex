defmodule ExBlockchain.ExchangeRates do
  @moduledoc """
  Wrapper around the Exchange Rates API
  See: https://blockchain.info/api/exchange_rates_api
  """


  @doc """
  Retrieves a blob of currency codes where
   - `15m` is  is the 15 minutes delayed market price
   - "last" is the most recent market price
   - "symbol" is the currency symbol

  ## Example

      ticker = ExBlockchain.ExchangeRates.ticker
  """
  def ticker do
    ExBlockchain.request("ticker")
  end

  @doc """
  Converts `value` in `currency` to BTC.

  ## Example

      btc_value = ExBlockchain.ExchangeRates.to_btc("USD", 50)
  """
  def to_btc(currency, value) do
    params = %{ currency: currency, value: value }
    ExBlockchain.request("tobtc?#{URI.encode_query(params)}")
  end
end
