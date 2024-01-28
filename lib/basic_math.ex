defmodule BasicMath do
  def add(addend_1,addend_2)do
    addend_1 + addend_2
  end
  # super easy functions can be written in a shorter way
  def add_shortened(addend_1,addend_2), do: addend_1+addend_2
  def subtract(minuend,subtrahend), do: minuend-subtrahend
  def multiply(multiplier,multiplicant), do: multiplier*multiplicant
  def divide(divident,divider) do
    divident/divider
  end

  @doc """
    rounds a float number to 2 decimal points
  """
  def round_up(value) do
    Float.ceil(value,2)
  end
end
