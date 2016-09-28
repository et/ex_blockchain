defmodule ExBlockchain.Blockchain.BlockchainTest do
  use ExUnit.Case, async: false
  use ExVCR.Mock, adapter: ExVCR.Adapter.Hackney

  setup_all do
    HTTPoison.start
  end

  test "block/1" do
    use_cassette "block" do
      block = ExBlockchain.Blockchain.block("000000000000000016f9a2c3e0f4c1245ff24856a79c34806969f5084f410680")
      assert block != nil
    end
  end
end
