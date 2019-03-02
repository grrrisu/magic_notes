defmodule MagicNotesWeb.UserView do
  use MagicNotesWeb, :view
  alias MagicNotes.Accounts

  def first_name(%Accounts.User{name: name}) do
    name |> String.split(" ") |> Enum.at(0)
  end
end
