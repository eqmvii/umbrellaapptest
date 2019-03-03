defmodule ApiappTest do
  use ExUnit.Case
  doctest Apiapp

  test "greets the world" do
    assert Apiapp.hello() == :world
    assert 1 == 1 # nice
  end
end
