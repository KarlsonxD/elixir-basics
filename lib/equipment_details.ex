defmodule EquipmentDetails do
  def get_equipment_list() do
    [:space_helmet, :space_suit, :snacks, :grapling_hook, :probe]
  end

  def item_details(:space_helmet) do
    {3, :kg, 1}
  end

  def item_details(:space_suit) do
    {16, :kg, 1}
  end

  def item_details(:snacks) do
    {1, :kg, 16}
  end

  def item_details(:grapling_hook) do
    {4, :kg, 1}
  end

  def item_details(:probe) do
    {2, :lb, 1}
  end

  # for a more detailed error message, function overload with unknown atom, otherwise it would spit out all tested methods
  def item_details(_other) do
    raise "unknown item"
  end
end
