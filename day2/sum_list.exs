defmodule Math do

  def sum_list([]), do: nil

  def sum_list([head | tail]) do
    sum_list(tail, head)
  end

  def sum_list([head | tail], accumulator) do
    sum_list(tail, head + accumulator)
  end

  def sum_list([], accumulator) do
    accumulator
  end

  def double_each([head | tail]) do
    [head * 2 | double_each(tail)]
  end

  def double_each([]), do: []
end

IO.puts Math.sum_list([1,2,3,4])
IO.puts Math.sum_list([])

IO.inspect Math.double_each([1,2,3,99])
# The same as:
IO.inspect Enum.map([1,2,3,99], fn x -> x * 2 end)


