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

      iex> DarkMagic.Map.ivert(%{"a"=>1, "b"=>2, "c"=>3, "d"=>4})
      %{1=>"a", 2=>"b", 3=>"c", 4=>"d"}

      iex> DarkMagic.Map.stringify_keys(%{ 1 => "b", "c"=>"d", :f=>"t"})
      %{"1"=>"b", "c"=>"d", "f"=>"t"}
  """
  def deep_merge(first_map, second_map) when is_map(first_map) and is_map(second_map) do
    Map.merge(first_map, second_map, fn(_, map_a, map_b) -> deep_merge(map_a, map_b) end)
  end

  def deep_merge(first_map, second_map) do
    second_map
  end

  def ivert(map) do
    Enum.into(Enum.map(map, fn({key, value})->
     {key, value}={value, key}
    end), %{})
  end

  def stringify_keys(map) do
    Enum.into(Enum.map(map, fn({key, value})->
      {key = to_string(key), value}
    end) ,%{})
  end
end
