# THIS IS NOT ELIXIR
# for(i = 0; i < sizeof(array); i++) {
#  array[i] = array[i] * 2;
#}

defmodule Recursion do
  # Alternative to (msg, 0)
  # def print_multiple_times(msg, n) when n <= 1 do
  #   IO.puts msg
  # end
  
  def print_multiple_times(msg, 1) do
    IO.puts "last: #{msg}"
  end

  def print_multiple_times(msg, n = 2 ) do
    IO.puts "no2: #{msg}"
    print_multiple_times(msg, n-1)
  end
  

  def print_multiple_times(msg, n) do
    IO.puts msg
    print_multiple_times(msg, n-1)
  end
end

Recursion.print_multiple_times("Ciao!", 5)
