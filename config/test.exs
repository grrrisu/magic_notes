use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :magic_notes, MagicNotesWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :magic_notes, MagicNotes.Repo,
  username: "postgres",
  password: "postgres",
  database: "magic_notes_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
