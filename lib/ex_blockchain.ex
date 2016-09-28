defmodule ExBlockchain do
  use HTTPoison.Base

  @endpoint "https://blockchain.info/"

  @doc """
  Submits a request to the Blockchain API
  """
  def request(path, opts \\ []) do
    ExBlockchain.get!(path)
    |> parse(opts)
  end

  def parse(response, opts) do
    Poison.decode!(response.body, opts)
  end

  defp process_url(path) do
     @endpoint <> path
  end
end
