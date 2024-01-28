defmodule BasicMathTest do
    use ExUnit.Case
    doctest BasicMath

    test "test addition" do
      assert BasicMath.add(1,2.5) == 3.5
    end

end
