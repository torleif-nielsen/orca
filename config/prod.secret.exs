use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
#
# You should document the content of this
# file or create a script for recreating it, since it's
# kept out of version control and might be hard to recover
# or recreate for your teammates (or you later on).
config :orca, Orca.Endpoint,
  secret_key_base: System.get_env("SEC_KEY")

# Configure your database
config :orca, Orca.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: System.get_env("DB_USER"),
  password: System.get_env("DB_USER"),
  database: "orca_prod",
  pool_size: 20
