defmodule MixProperExampleTest do
  use ExUnit.Case
  doctest MixProperExample

  test "greets the world" do
    assert MixProperExample.hello() == :world
  end
end
