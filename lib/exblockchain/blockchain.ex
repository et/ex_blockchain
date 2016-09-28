defmodule ExBlockchain.Blockchain.Block do
  defstruct [
    :hash,
    :ver,
    :prev_block,
    :mrkl_root,
    :time,
    :bits,
    :nonce,
    :n_tx,
    :size,
    :block_index,
    :main_chain,
    :height,
    :received_time,
    :relayed_by,
    :tx
  ]
end

defmodule ExBlockchain.Blockchain do
  @moduledoc """
  Wrapper around the Blockchain Data API
  See: https://blockchain.info/api/blockchain_api
  """

  def block(id) do
    ExBlockchain.request("rawblock/#{id}", as: %ExBlockchain.Blockchain.Block{})
  end
end
