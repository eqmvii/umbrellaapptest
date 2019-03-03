defmodule Walrusweb.PageController do
  use Walrusweb, :controller

  def index(conn, _params) do
    conn = 
      conn
      |> assign(:testkey, "test value")
      |> assign(:outsideappkey, Apiapp.cross_app_test())
      |> assign(:eve_api_key, Apiapp.eve_api_test())
      |> assign(:eve_region_info_too, Apiapp.eve_api_test_too())

    render conn, "index.html"
  end
end
