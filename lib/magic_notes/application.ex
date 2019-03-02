defmodule MagicNotes.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    # List all child processes to be supervised
    children = [
      # Start the Ecto repository
      MagicNotes.Repo,
      # Start the endpoint when the application starts
      MagicNotesWeb.Endpoint
      # Starts a worker by calling: MagicNotes.Worker.start_link(arg)
      # {MagicNotes.Worker, arg},
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: MagicNotes.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    MagicNotesWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
