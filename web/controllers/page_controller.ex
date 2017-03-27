defmodule Scavengerhunt.PageController do
  use Scavengerhunt.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
