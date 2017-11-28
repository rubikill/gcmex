defmodule Gcmex.Mixfile do
  use Mix.Project

  def project do
    [app: :gcmex,
     version: "0.0.1",
     elixir: "~> 1.1",
     description: "Google Cloud Messaging client library for elixir",
     package: package(),
     deps: deps()]
  end

  def application do
    [applications: [:logger]]
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README*"],
      maintainers: ["Duke"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/dukex/gcmex"}
    ]
  end

  defp deps do
    [ {:httpoison, "~> 0.9"},
      {:poison, "~> 3.0"},
      {:ex_doc, "~> 0.18.1"},
      {:earmark, "~> 1.1"}]
  end
end
