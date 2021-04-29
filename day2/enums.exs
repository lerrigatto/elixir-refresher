IO.inspect Enum.map([1,2,3], fn x -> x * 2 end)

IO.inspect Enum.map(%{1=>2, 3=>4}, fn {k,v} -> k*v end)

IO.inspect Enum.map(1..3, fn x -> x*2 end)
IO.inspect Enum.reduce(1..3, 0, &+/2)

#function_name/#arity

odd? = &(rem(&1, 2) != 0)

IO.inspect Enum.filter(1..3, odd?)

# This two are equivalent, pipes are cooler
# 1..100_000_000 |> Enum.map(&(&1 * 3)) |> Enum.filter(odd?) |> Enum.sum() |> IO.puts
IO.puts Enum.sum(Enum.filter(Enum.map(1..100_000, &(&1 * 3)), odd?))

# Streams do not allocate the intermediate objects in memory
# 1..100_000_000 |> Stream.map(&(&1 * 3)) |> Stream.filter(odd?) |> Enum.sum() |> IO.puts


stream = Stream.unfold("hełło", &String.next_codepoint/1)
IO.inspect Enum.take(stream, 2)
IO.inspect Enum.take(stream, 3)
IO.inspect Enum.take(stream, 5)

ourfilestream = File.stream!("myfile.txt")
IO.puts Enum.take(ourfilestream, 10)
