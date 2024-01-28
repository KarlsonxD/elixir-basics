defmodule BasicMathTest do
    use ExUnit.Case
    doctest BasicMath #this runs tests on the examples given in your documentation! (headexplode)

    test "add 1 + 2.5 = 3.5" do
      assert BasicMath.add(1,2.5) == 3.5
    end

end
