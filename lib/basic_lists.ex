defmodule BasicLists do
  @spec combined_list() :: [1 | 2 | 3, ...]
  def combined_list() do
    [1] ++ [2, 3]
  end

  def prepending_list() do
    [1 | [2, 3]]
  end

  def tail_detail() do
    list = [1, 2, 3, 4, 5, 6]
    [first, second | rest] = list

    IO.puts(
      "by default lists of integers are a char list do display the integers in it, it needs some extra logic, look in the code ;)"
    )

    # https://hexdocs.pm/elixir/List.html#module-charlists
    # https://elixirforum.com/t/disable-auto-converting-an-array-of-number-into-their-corresponding-characters/24699
    IO.puts(
      "total list #{inspect(list, charlists: :as_lists)} first item #{first} second item #{second} and the rest (tail) #{inspect(rest, charlists: :as_lists)}"
    )
  end

  def get_equipment_list() do
    ["Space Helmet", "Space suit", "Snacks", "Grapling hook", "probe"]
  end

  def get_first_item(list) do
    hd(list)
  end

  def get_last_item(list) do
    # by default removes first item of the list, and returns the tail
    tl(list)
  end

  def add(list, value) do
    # the value needs to be converted to a list
    # the longer the list, it will take more time, cause appending actually iterates over the whole linked list, this is why prepending is more performant
    list ++ [value]
  end

  # original function but using variables that are not really needed, below is the more efficient function
  # def add_fast(list, value) do
  #   list_reversed = Enum.reverse(list)
  #   new_list = [value | list_reversed]
  #   Enum.reverse(new_list)
  # end

  def add_fast(list, value) do
    Enum.reverse([value | Enum.reverse(list)])
  end

  def remove_item(list, index) do
    List.delete_at(list, index)
  end

  def equipment_count(list) do
    length(list)
  end

  def check_for_item(list, item) do
    IO.puts(item in list)
  end
end
