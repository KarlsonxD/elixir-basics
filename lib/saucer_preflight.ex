defmodule SaucerPreflight do
  defp max_flying_load_lbs, do: 55
  defp convert_kg_to_lb(kg_value), do: kg_value * 2.2

  # write a recursive loop that will convert kg to lbs
  def get_total_weight_of_inventory_list(list) do
    Enum.map(list, fn val ->
      # elem(0) to access the first item in a touple
      elem(EquipmentDetails.item_details(val), 0) |> convert_kg_to_lb()
    end)
    # add the weights together to get total
    |> Enum.sum()
  end

  def is_under_max_load?(list) do
    # call recursive function
    max_flying_load_lbs() >= get_total_weight_of_inventory_list(list)
    # return boolean
  end
end
