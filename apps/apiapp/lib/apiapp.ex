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

  def eve_api_test do
    url = "https://esi.evetech.net/latest/universe/regions/?datasource=tranquility"

    case HTTPoison.get(url) do
      {:ok, %HTTPoison.Response{status_code: 200, body: body}} ->
        IO.puts body
        body
      {:ok, %HTTPoison.Response{status_code: 404}} ->
        IO.puts "Not found :("
        "ERROR NOT FOUND"
      {:error, %HTTPoison.Error{reason: reason}} ->
        IO.inspect reason
        "Error: #{reason}"
    end
  end

  def eve_api_test_too do
    url = "https://esi.evetech.net/latest/universe/regions/10000001?datasource=tranquility"

    case HTTPoison.get(url) do
      {:ok, %HTTPoison.Response{status_code: 200, body: body}} ->
        IO.puts body
        body
      {:ok, %HTTPoison.Response{status_code: 404}} ->
        IO.puts "Not found :("
        "ERROR NOT FOUND"
      {:error, %HTTPoison.Error{reason: reason}} ->
        IO.inspect reason
        "Error: #{reason}"
    end
  end
end
