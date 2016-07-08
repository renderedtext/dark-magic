defmodule Extension do
  defmacro extends(module) do
    module    = Macro.expand(module, __CALLER__)
    functions = module.__info__(:functions)

    signatures = Enum.map functions, fn { name, arity } ->
      args = Enum.map 0..arity, fn(i) ->
        { String.to_atom(<< ?x, ?A + i >>), [], nil }
      end

      { name, [], tl(args) }
    end

    quote do
      defdelegate unquote(signatures), to: unquote(module)
      defoverridable unquote(functions)
    end
  end
end
