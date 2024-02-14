defmodule Anonymus do
  # basic anonymus functions can be stored in variables and passed around like that, example:
  # add = fn a, b -> a + b end
  # you can use the capture operator (&) for short versions of anonymus functions: https://hexdocs.pm/elixir/Kernel.SpecialForms.html#&/1
  # here is a short version for the anonymus function above
  # add_short = &(&1 + &2)

  # anonymus functions are called with an . between the variable name and the parameter list:
  # add.(1,2)
  # =3

  def get_equipment_list() do
    [:space_helmet, :space_suit, :snacks, :grapling_hook, :probe]
  end

  def get_weight_lbs(list) do
    get_lbs = fn item ->
      {wt, type, _qty} = EquipmentDetails.item_details(item)

      case type do
        :kg -> wt * 2.2
        _ -> wt
      end
    end

    Enum.map(list, get_lbs)
  end

  def get_first_item(list) do
    first = fn [head | _rest] -> head end
    first.(list)
  end

  def atom_to_string(list) do
    convert = fn x ->
      to_string(x)
      |> String.upcase()
      |> String.replace("_", " ")
    end

    Enum.map(list, convert)
  end
end
