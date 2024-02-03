defmodule BasicStrings do
  def concatted_string do
    "This " <> "is" <> " concatinated"
  end

  def interpolated_string do
    "this math operation was interpolated: 3 + 4 = #{3 + 4}"
  end

  def interpolated_list do
    "Elixir can spit lists of strings (or integers as unicode chars) out too! #{["apple", ",", "banana"]}"
  end

  def escaped_character_string do
    # you need the IO puts method for escaped characters to displayed correctly
    IO.puts("\"A\" is the \#1 letter of the alphabet")
  end

  def multi_line_string do
    IO.puts("""
    we can
    type multiple
    lines without adding
    new line syntax
    """)
  end

  def frist_letter(value) do
    String.trim(value)
    |> String.first()
  end

  def initial(value) do
    "#{frist_letter(value) |> String.capitalize()}. "
  end

  def initials(full_name) do
    list = full_name |> String.split(" ")

    # like a for loop, but is doing recursion behind the scenes
    # fn is a private function syntax
    Enum.map(list, fn name ->
      initial(name)
    end)

    # these iteration returns a list that can be piped
    |> List.to_string()
    |> String.trim()
  end
end
