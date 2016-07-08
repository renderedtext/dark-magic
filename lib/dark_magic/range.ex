defmodule DarkMagic.Range do
  @doc ~S"""
  Test if two ranges overlap

  # Examples
      iex> DarkMagic.Range.overlap?(11..15, 12..17)
      true

      iex> DarkMagic.Range.overlap?(11..15, 17..19)
      false

      iex> DarkMagic.Range.overlap?(11..15, 13..14)
      true
  """
  def overlap?(range_a, range_b) do
    Enum.min(range_a) < Enum.max(range_b) &&
    Enum.min(range_b) < Enum.max(range_a)
  end
end
