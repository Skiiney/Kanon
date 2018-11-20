# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :projeto,
  ecto_repos: [Projeto.Repo]

# Configures the endpoint
config :projeto, Projeto.Endpoint,
  url: [host: "0.0.0.0"],
  secret_key_base: "muK4UIqvz6XV5DlvllrjRoQZSu48Zbrt0SnS9NsENoVWYMHOvbcN+5BbiCtsuVpm",
  render_errors: [view: Projeto.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Projeto.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :projeto, Projeto.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "Projeto_db",
  hostname: "postgres://kcajougw:9ILvY9qibRbjsaMRU1RWm2zoqaYqM5j1@elmer.db.elephantsql.com:5432/kcajougw"

# lala 
config :projeto, ecto_repos: [Projeto.Repo]  
# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
