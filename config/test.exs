use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :projeto, Projeto.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :projeto, Projeto.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "projeto_test",
  hostname: "postgres://kcajougw:9ILvY9qibRbjsaMRU1RWm2zoqaYqM5j1@elmer.db.elephantsql.com:5432/kcajougw",
  pool: Ecto.Adapters.SQL.Sandbox
