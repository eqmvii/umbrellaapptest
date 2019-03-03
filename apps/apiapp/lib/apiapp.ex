defmodule Apiapp do
  @moduledoc """
  Documentation for Apiapp.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Apiapp.hello
      :world

  """
  def hello do
    :world
  end

  def cross_app_test do
    walrus = HTTPoison.get! "http://httparrot.herokuapp.com/get"
    IO.inspect walrus
    "afer poison this string came from apiapp"
  end
end
