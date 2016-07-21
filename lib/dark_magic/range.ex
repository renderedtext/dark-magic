defmodule DarkMagic.Range do
  import Extension
  extends Range

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


  @doc ~S"""
  Returns the intersection of two ranges or nil if the intersection doesn't exists.

  # Examples
      iex> DarkMagic.Range.intersection(11..15, 12..17)
      12..15

      iex> DarkMagic.Range.intersection(11..15, 17..19)
      nil
  """
  def intersection(range_a, range_b) do
    from = max(Enum.min(range_a), Enum.min(range_b))
    to   = min(Enum.max(range_a), Enum.max(range_b))

    if from < to do
      from..to
    else
      nil
    end
  end

end
