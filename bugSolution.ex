```elixir
list = [1, 2, 3, 4, 5]

result = Enum.reduce(list, [], fn x, acc ->
  if x == 3 do
    [:exit]
  else
    [x | acc]
  end
end)

IO.puts(Enum.reverse(result))

#Alternative using loop:

list = [1, 2, 3, 4, 5]
result = []

for x <- list do
  if x == 3 do
    result = [:exit]
    break
  else
    result = [x | result]
  end
end

IO.puts(Enum.reverse(result))
```