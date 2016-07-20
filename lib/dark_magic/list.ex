defmodule DarkMagic.List do
  import Extension
  extends List

  @doc ~S"""
  Wraps an element into a list if it is not already a list.

  # Examples
      iex> DarkMagic.List.wrap(3)
      [3]

      iex> DarkMagic.List.wrap([1, 2])
      [1, 2]
  """
  def wrap(element) when is_list(element), do: element
  def wrap(element) when not is_list(element), do: [element]

end
