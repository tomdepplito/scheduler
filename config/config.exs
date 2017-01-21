# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :scheduler,
  ecto_repos: [Scheduler.Repo]

# Configures the endpoint
config :scheduler, Scheduler.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "1bQnXzURHfx7/dsBqn55OB1UKy5hT32/NCniMZSDog6g4IFoO/IGnOTZsUtyapQp",
  render_errors: [view: Scheduler.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Scheduler.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
