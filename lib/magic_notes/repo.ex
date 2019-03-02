defmodule MagicNotes.Repo do
  use Ecto.Repo,
    otp_app: :magic_notes,
    adapter: Ecto.Adapters.Postgres
end
