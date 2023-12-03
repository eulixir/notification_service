defmodule PixTest do
  use ExUnit.Case
  doctest Pix

  test "greets the world" do
    assert Pix.hello() == :world
  end
end
