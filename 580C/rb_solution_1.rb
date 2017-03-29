vertices, @max_cats_number = gets.split.map(&:to_i)
@cats_positions = gets.split.map(&:to_i)
@tree = Array.new(vertices + 1){ Array.new }

(vertices - 1).times do
  from, to = gets.split.map(&:to_i)
  from = from - 1
  to = to - 1
  @tree[from] << to
  @tree[to] << from
end

def graph(current_vertice, last_vertice, cats_number)

  sum = 0

  if cats_number > @max_cats_number
    return 0
  elsif @tree[current_vertice].length == 1 && @tree[current_vertice][0] == last_vertice
    return 1
  end

  for i in 0...@tree[current_vertice].length
    if @tree[current_vertice][i] != last_vertice
      if @cats_positions[@tree[current_vertice][i]] == 1
        sum = sum + graph(@tree[current_vertice][i], current_vertice, cats_number + 1)
      else
        sum = sum + graph(@tree[current_vertice][i], current_vertice, 0)
      end
    end
  end

  return sum
end

puts graph(0, -1, @cats_positions[0])
