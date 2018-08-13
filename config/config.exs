# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :my_crush_bot, MyCrushBotWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "dVOSQHsM2YtYFrQa1ud6t0RU+6mxzM74+kowcLa8E2qrLSSnNDrCGI9ZTXQ3phSJ",
  render_errors: [view: MyCrushBotWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: MyCrushBot.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
