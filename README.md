# Dark Magic

DarkMagic is a rich, comprehensive set of utility functions and modules for
Elixir that are useful for everyday programming.

The complete documentation is available [here](TODO).

## Installation

To use DarkMagic with your projects, edit your `mix.exs` file and add it as a
dependency:

``` elixir
def deps do
  [{:dark_magic, "~> 0.0.1"}]
end

def application do
  [applications: [:dark_magic]]
end
```

## Quick Introduction

The following line includes `DarkMagic` in your module and extends Elixir's core
modules.

``` elixir
use DarkMagic
```

Example:

``` elixir
defmodule Example do
  use DarkMagic

  def example_calculation do
    rangeA = 11..20
    rangeB = 15..25

    # dark magic's extensions for the core Elixir library
    Range.overlap?(range_a, range_b)
  end
end
```

## Issues

Feel free to submit issues and enhancement requests.

## Contributions

Please refer to each project's style guidelines and guidelines for submitting
patches and additions. In general, we follow the "fork-and-pull" Git workflow.

1. **Fork** the repo on GitHub
2. **Clone** the project to your own machine
3. **Commit** changes to your own branch
4. **Push** your work back up to your fork
5. Submit a **Pull request** so that we can review your changes

Be sure to merge the latest from "upstream" before making a pull request!

## Licence

The MIT License (MIT)
Copyright (c) 2016 Rendered text

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
