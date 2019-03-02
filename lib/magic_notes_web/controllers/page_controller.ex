defmodule MagicNotesWeb.PageController do
  use MagicNotesWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
