defmodule Calculator do
  def find_percentage_of_value(percentage, value) do
    #value * (percentage/100)

    #following sample uses our already written functions
    # dec_percent = BasicMath.divide(percentage,100)
    # BasicMath.multiply(dec_percent,value)

    #same operation using the pipe operator (|>)
    percentage
    |> BasicMath.divide(100)
    |> BasicMath.multiply(value) # the value from pipe automatically enters in the first value of the method called
    |> BasicMath.round_up()
  end

  # round up to the nearest 100
  def find_distance_traveld(speed,time) do
    # speed=distance / time
    BasicMath.multiply(speed,time)
    |> BasicMath.round_up()
  end
end
