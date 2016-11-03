# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :orca,
  ecto_repos: [Orca.Repo]

# Configures the endpoint
config :orca, Orca.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "yb1jB36uAzyOWNxJV9Xz4iSUS/M26yEcdXbr2H3IBa2BMVIa526G/nf+602fnOL9",
  render_errors: [view: Orca.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Orca.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
