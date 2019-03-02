defmodule MagicNotesWeb.UserController do
  use MagicNotesWeb, :controller
  alias MagicNotes.Accounts

  def index(conn, _params) do
    users = Accounts.list_users()
    render(conn, "index.html", users: users)
  end

  def show(conn, %{"id" => id}) do
    user = id |> String.to_integer() |> Accounts.get_user()
    render(conn, "show.html", user: user)
  end
end
