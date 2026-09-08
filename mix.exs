defmodule Inttegro.MixProject do
  use Mix.Project

  @version "0.1.1"

  def project do
    [
      app: :inttegro,
      version: @version,
      elixir: "~> 1.15",
      start_permanent: Mix.env() == :prod,
      description: "Official typed server-side Elixir SDK for Inttegro",
      source_url: "https://github.com/zebodotdev/inttegro-sdk-elixir",
      homepage_url: "https://studio.inttegro.com/sdks/elixir",
      package: package(),
      docs: docs(),
      deps: deps()
    ]
  end

  def application, do: [extra_applications: [:logger]]

  defp deps do
    [
      {:req, "~> 0.5"},
      {:jason, "~> 1.4"},
      {:plug, "~> 1.16", only: :test},
      {:ex_doc, "~> 0.34", only: :dev, runtime: false}
    ]
  end

  defp package do
    [
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/zebodotdev/inttegro-sdk-elixir"},
      files: ~w(lib mix.exs README.md CHANGELOG.md LICENSE)
    ]
  end

  defp docs, do: [main: "readme", extras: ["README.md", "CHANGELOG.md"]]
end
