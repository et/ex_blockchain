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

  test "tx/1" do
    use_cassette "tx" do
      block = ExBlockchain.Blockchain.tx("d4af240386cdacab4ca666d178afc88280b620ae308ae8d2585e9ab8fc664a94")
      assert block != nil
    end
  end
end
