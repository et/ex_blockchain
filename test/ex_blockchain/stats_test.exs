
defmodule ExBlockchain.Blockchain.StatsTest do
  use ExUnit.Case, async: false
  use ExVCR.Mock, adapter: ExVCR.Adapter.Hackney

  setup_all do
    HTTPoison.start
  end

  test "stats/0" do
    use_cassette "stats" do
      stats = ExBlockchain.Stats.stats()
      assert stats != nil
    end
  end
end
