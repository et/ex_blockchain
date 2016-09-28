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

defmodule ExBlockchain.Blockchain.Transaction do
  defstruct [
    :hash,
    :ver,
    :vin_sz,
    :vout_sz,
    :lock_time,
    :size,
    :relayed_by,
    :block_height,
    :tx_index,
    :inputs,
    :out
  ]
end

defmodule ExBlockchain.Blockchain.Address do
  defstruct [
    :hash_160,
    :address,
    :n_tx,
    :n_unredeemed,
    :total_received,
    :total_sent,
    :final_balance,
    :txs
  ]
end


defmodule ExBlockchain.Blockchain do
  @moduledoc """
  Wrapper around the Blockchain Data API
  See: https://blockchain.info/api/blockchain_api
  """


  @doc """
  Retrieves a block by index or hash

  ## Example

      block = ExBlockchain.Blockchain.block("000000000000000016f9a2c3e0f4c1245ff24856a79c34806969f5084f410680")
  """
  def block(id) do
    ExBlockchain.request("rawblock/#{id}", as: %ExBlockchain.Blockchain.Block{})
  end


  @doc """
  Retrieves a transaction by index or hash

  ## Example

      tx = ExBlockchain.Blockchain.tx("d4af240386cdacab4ca666d178afc88280b620ae308ae8d2585e9ab8fc664a94")
  """
  def tx(id) do
    ExBlockchain.request("rawtx/#{id}", as: %ExBlockchain.Blockchain.Transaction{})
  end

  @doc """
  Retrieves an address by hash

  ## Example

      address = ExBlockchain.Blockchain.address("1HS9RLmKvJ7D1ZYgfPExJZQZA1DMU3DEVd")
  """
  def address(id) do
    ExBlockchain.request("rawaddr/#{id}", as: %ExBlockchain.Blockchain.Address{})
  end
end
