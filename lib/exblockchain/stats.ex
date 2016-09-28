defmodule ExBlockchain.Stats do
  @moduledoc """
  Wrapper around the Blockchain Stats API
  See: https://blockchain.info/api/charts_api
  """

  defstruct [
    :n_btc_mined,
    :market_cap,
    :total_fees_btc,
    :total_btc_sent,
    :minutes_between_blocks,
    :market_price_usd,
    :miners_operating_margin,
    :electricity_cost_usd,
    :hash_rate,
    :estimated_transaction_volume_usd,
    :miners_revenue_usd,
    :blocks_size,
    :n_blocks_total,
    :difficulty,
    :timestamp,
    :miners_revenue_btc,
    :n_blocks_mined,
    :trade_volume_usd,
    :electricity_consumption,
    :estimated_btc_sent,
    :n_tx,
    :trade_volume_btc
  ]

  @doc """
  Retrieves statistics from the stats page

  ## Example

      stats = ExBlockchain.Stats.stats()
  """
  def stats do
    params = %{ format: "json" }
    ExBlockchain.request("stats?#{URI.encode_query(params)}", as: %ExBlockchain.Stats{})
  end
end
