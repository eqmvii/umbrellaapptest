# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :walrusweb,
  namespace: Walrusweb,
  ecto_repos: [Walrusweb.Repo]

# Configures the endpoint
config :walrusweb, Walrusweb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "zeheI7LhL3GWCp8TgvRuJfk0ArXOWZ+Evz7WeB3t9nHJ+dJXfc8NnQDfU74f/YYT",
  render_errors: [view: Walrusweb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Walrusweb.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :walrusweb, :generators,
  context_app: false

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
