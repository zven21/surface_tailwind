defmodule SurfaceTailwind.MixProject do
  use Mix.Project

  @source_url "https://github.com/zven21/surface_tailwind"
  @version "0.1.0"

  def project do
    [
      app: :surface_tailwind,
      description: "A set of simple Surface components based on Tailwind.",
      version: @version,
      elixir: "~> 1.9",
      elixirc_paths: elixirc_paths(Mix.env()),
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      aliases: aliases(),
      package: package()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  def catalogues do
    [
      "priv/catalogue",
      "deps/surface/priv/catalogue"
    ]
  end

  defp elixirc_paths(:dev), do: ["lib"] ++ catalogues()
  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false},
      {:jason, "~> 1.0"},
      {:surface_catalogue, "~> 0.1.0", only: :dev},
      {:surface_formatter, "~> 0.5.0", only: :dev},
      {:surface, ">= 0.5.0"}
    ]
  end

  defp aliases do
    [
      dev: "run --no-halt dev.exs",
      "phx.server": "dev"
    ]
  end

  defp package() do
    [
      files: ["lib", "mix.exs", "README*", "priv"],
      licenses: ["MIT"],
      links: %{"GitHub" => @source_url}
    ]
  end
end
