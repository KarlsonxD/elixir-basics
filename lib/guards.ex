defmodule Guards do
  @doc """
  the type function analyses the input and returns an atom representing the type of the value (only implemented for number types)
  ## Examples
      iex> Guards.type(3)
      :integer
      iex> Guards.type(3.5)
      :float
  """
  def type(value) when is_integer(value), do: :integer
  def type(value) when is_float(value), do: :float

  # more general type check, because of integer and float implementation, can't be triggered anymore
  def type(value) when is_number(value), do: :number

  @doc """
  function that proof if you the parsed integer is a single digit
    ## Examples
    iex> Guards.is_single_digit(3)
    true
    iex> Guards.is_single_digit(33)
    false
  """
  def is_single_digit(value) when is_integer(value) and value < 10, do: true
  def is_single_digit(value) when not is_integer(value) or value > 9, do: false

  defguardp is_even(value) when is_integer(value) and rem(value, 2) == 0

  @doc """
  function that retuns a number if it's even and otherwise returns :not_even, uses our private gurad function defined earlier
    ## Examples
    iex> Guards.return_even_numbers(33)
    :not_even
    iex> Guards.return_even_numbers()
    :not_even
    iex> Guards.return_even_numbers(2)
    2
  """
  # this function is called a header function and is called when you don't pass any values to the function call
  # this will insert a default value (in this case the atom :empty) and instead of an error, you will get the result :not_even because of that
  def return_even_numbers(value \\ :empty)
  def return_even_numbers(value) when is_even(value), do: value
  def return_even_numbers(value) when not is_even(value), do: :not_even

  @doc """
  challenge implemenation of saucer preflight from the episode before in guard syntax
    ## Examples
    iex> Guards.is_under_max_load?(3)
    true
    iex> Guards.is_under_max_load?(56)
    false
    iex> Guards.is_under_max_load?(56,60)
    true
    iex> Guards.is_under_max_load?(56,50)
    false
  """
  def is_under_max_load?(load, max_load \\ 55)
  def is_under_max_load?(load, max_load) when is_number(load) and load <= max_load, do: true
  def is_under_max_load?(load, max_load) when not is_number(load) or load > max_load, do: false
end
