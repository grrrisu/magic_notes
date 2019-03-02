defmodule MagicNotes.Accounts do
  @moduledoc """
  The Accounts context
  """

  alias MagicNotes.Accounts.User

  def list_users do
    [
      %User{id: 1, name: "Justin Miller", username: "justin"},
      %User{id: 2, name: "David Blaine", username: "david"},
      %User{id: 3, name: "Chris Ramsey", username: "chris"}
    ]
  end

  def get_user(id) do
    Enum.find(list_users(), fn user -> user.id == id end)
  end

  def get_user_by(params) do
    Enum.find(list_users(), fn user ->
      Enum.all?(params, fn {key, value} ->
        Map.get(user, key) == value
      end)
    end)
  end
end
