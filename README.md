# Dark Magic

## Installation

1. Add dark_magic to your list of dependencies in `mix.exs`:

``` elixir
def deps do
  [{:dark_magic, "~> 0.0.1"}]
end
```

2. Ensure dark_magic is started before your application:

``` elixir
def application do
  [applications: [:dark_magic]]
end
```

