defmodule ExBlockchain.Mixfile do
  use Mix.Project

  @description """
    Elixir wrapper from the Blockchain.info API (v1)
  """

  def project do
    [app: :ex_blockchain,
     version: "0.1.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: @description,
     package: package,
     deps: deps]
  end

  def application do
    [applications: [:httpoison]]
  end

  defp deps do
    [
      {:ex_doc, "~> 0.13", only: :dev},
      {:exvcr, "~> 0.7", only: :test},
      {:httpoison, "~> 0.9.0"},
      {:poison, "~> 2.2"}
    ]
  end

  defp package do
    [
     name: :ex_blockchain,
     files: ["lib", "mix.exs", "README*", "LICENSE*"],
     maintainers: ["Eric Thomas"],
     licenses: ["MIT"],
     links: %{"GitHub" => "https://github.com/et/ex_blockchain",
              "Docs" => "https://github.com/et/ex_blockchain/blob/master/README.md"}
    ]
  end
end
