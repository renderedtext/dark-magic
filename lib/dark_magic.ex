defmodule DarkMagic do

  defmacro __using__(_) do
    quote do
      alias DarkMagic.Range
      alias DarkMagic.Map
    end
  end

end
