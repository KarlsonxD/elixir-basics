defmodule BasicProjectTest do
  use ExUnit.Case
  doctest BasicProject

  test "greets the world" do
    assert BasicProject.hello() == :world
  end
end
