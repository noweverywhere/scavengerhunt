# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :scavengerhunt,
  ecto_repos: [Scavengerhunt.Repo]

# Configures the endpoint
config :scavengerhunt, Scavengerhunt.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "OByZoqj26Abq/RJUmk+niJTxQoehxDCsycBFw/A61U+vKU8fyBgO/1Amg4idhBGQ",
  render_errors: [view: Scavengerhunt.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Scavengerhunt.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
