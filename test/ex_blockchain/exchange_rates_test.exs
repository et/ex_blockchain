defmodule ExBlockchain.ExchangeRatesTest do
  use ExUnit.Case, async: false
  use ExVCR.Mock, adapter: ExVCR.Adapter.Hackney

  setup_all do
    HTTPoison.start
  end

  test "ticker/0" do
    use_cassette "ticker" do
      ticker = ExBlockchain.ExchangeRates.ticker
      assert ticker != nil
    end
  end

  test "to_btc/2" do
    use_cassette "to_btc" do
      btc_value = ExBlockchain.ExchangeRates.to_btc("USD", 50)
      assert is_float(btc_value)
    end
  end
end
