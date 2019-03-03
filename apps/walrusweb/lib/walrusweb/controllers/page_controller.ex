defmodule Walrusweb.PageController do
  use Walrusweb, :controller

  def index(conn, _params) do
    conn = assign(conn, :testkey, "test value")

    conn = assign(conn, :outsideappkey, Apiapp.cross_app_test())

    render conn, "index.html"
  end
end
