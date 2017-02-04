defmodule PlugLocaleRootRedirect.Mixfile do
  use Mix.Project

  def project do
    [app: :plug_locale_root_redirect,
     version: "0.1.0",
     elixir: "~> 1.1",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps(),
     package: package(),
     name: "Plug Locale Root Redirect",
     source_url: "https://github.com/remiprev/plug_locale_root_redirect",
     homepage_url: "https://github.com/remiprev/plug_locale_root_redirect",
     description: "A Plug that uses PlugBest to map '/' route to a path based on the Accept-Language HTTP header.",
     docs: [extras: ["README.md"], main: "readme", source_ref: "v#{@version}", source_url: "https://github.com/remiprev/plug_locale_root_redirect"]]
  end

  def application do
    [applications: []]
  end

  defp deps do
    [
      {:plug, " ~> 1.0"},
      {:plug_best, " ~> 0.1"},
      {:earmark, "~> 0.1", only: :dev},
      {:ex_doc, "~> 0.11", only: :dev}
    ]
  end

  defp package do
    %{
      maintainers: ["Rémi Prévost"],
      licenses: ["MIT"],
      links: %{
        "GitHub" => "https://github.com/remiprev/plug_locale_root_redirect"
      }
    }
  end
end
