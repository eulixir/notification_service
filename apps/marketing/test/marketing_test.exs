defmodule MarketingTest do
  use ExUnit.Case
  doctest Marketing

  test "greets the world" do
    assert Marketing.hello() == :world
  end
end
