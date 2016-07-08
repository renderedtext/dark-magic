defmodule DarkMagicTest do
  use ExUnit.Case
  doctest DarkMagic

  test "using the dark magic package" do
    use DarkMagic

    # we can use functions from DarkMagic
    assert Range.overlap?(1..5, 2..7) == true

    # we can use functions from the core
    assert is_nil(Range.new(1, 7)) == false
  end
end
