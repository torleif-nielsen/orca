defmodule Orca.PageController do
  use Orca.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
