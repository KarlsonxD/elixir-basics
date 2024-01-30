defmodule Recursion do
  def get_equipment_list() do
    ["Space Helmet", "Space Suit", "Snack", "Grapling Hook", "Probe", "Snack"]
  end

  # basic loop functions, use recursive function calls, cause the variable in elixir are immutable
  # this function overload is to determine the end of the loop
  def loop([]), do: nil

  def loop([head | tail]) do
    IO.puts(head)
    loop(tail)
  end

  # this is how the length function is built under the hood
  def equipment_count([]), do: 0
  def equipment_count([_head | tail]), do: 1 + equipment_count(tail)

  def format_equipment_list([]), do: []
  # here the list is formatted to lower case and each item is prepended to another list
  def format_equipment_list([head | tail]) do
    [head |> String.downcase() |> String.replace(" ", "_") | format_equipment_list(tail)]
  end

  def occurrence_count([], _value), do: 0
  def occurrence_count([value | tail], value), do: 1 + occurrence_count(tail, value)
  def occurrence_count([_head | tail], value), do: occurrence_count(tail, value)
end
