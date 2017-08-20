defmodule BiggestProp do
  import :proper
  import :proper_types

  ##################
  ### Properties ###
  ##################

  def prop_biggest do
    forall(non_empty(list(integer())), fn(list) ->
      biggest(list) == list |> Enum.sort |> List.last
    end)
  end

  ###############
  ### Helpers ###
  ###############

  defp biggest([head|tail]), do: biggest(tail, head)

  defp biggest([], biggest), do: biggest
  defp biggest([head|tail], biggest) when head >= biggest do
    biggest(tail, head)
  end
  defp biggest([head|tail], biggest) when head < biggest do
    biggest(tail, biggest)
  end
end
