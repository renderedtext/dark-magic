defmodule DarkMagic.Map do
  import Extension
  extends Map

  @doc ~S"""
  Deep merges two maps

  # Examples
      iex> DarkMagic.Map.deep_merge(%{a: %{b: 1}}, %{a: %{c: 2}})
      %{a: %{b: 1, c: 2}}

      iex> DarkMagic.Map.deep_merge(%{a: %{f: %{a: 9}}}, %{a: %{c: 2, f: %{b: 3}}})
      %{a: %{c: 2, f: %{a: 9, b: 3}}}
  """
  def deep_merge(first_map, second_map) when is_map(first_map) and is_map(second_map) do
    Map.merge(first_map, second_map, fn(_, map_a, map_b) -> deep_merge(map_a, map_b) end)
  end

  def deep_merge(first_map, second_map) do
    second_map
  end


  @doc ~S"""
  Tranform every key in the map with the given function.

  # Examples
      iex> %{"a" => 1, "b" => 2} |> DarkMagic.Map.transform_keys(&String.upcase/1)
      %{"A" => 1, "B" => 2}
  """
  def transform_keys(map, fun) do
    map
    |> Enum.map(fn({key, value}) -> {fun.(key), value} end)
    |> Map.new
  end


  @doc ~S"""
  Tranform every value in the map with the given function.

  # Examples
      iex> %{"a" => 2, "b" => 3} |> DarkMagic.Map.transform_values(fn(value) -> value * value end)
      %{"a" => 4, "b" => 9}
  """
  def transform_values(map, fun) do
    map
    |> Enum.map(fn({key, value}) -> {key, fun.(value)} end)
    |> Map.new
  end


  @doc ~S"""
  Tranform every key in the map into a string.

  # Examples
      iex> %{a: 1, b: 2} |> DarkMagic.Map.stringify_keys
      %{"a" => 1, "b" => 2}
  """
  def stringify_keys(map) do
    map |> transform_keys(&to_string/1)
  end


  @doc ~S"""
  Tranform every key in the map into an atom.

  # Examples
      iex> %{"a" => 1, "b" => 2} |> DarkMagic.Map.atomize_keys
      %{a: 1, b: 2}
  """
  def atomize_keys(map) do
    map |> transform_keys(&String.to_atom/1)
  end
end
