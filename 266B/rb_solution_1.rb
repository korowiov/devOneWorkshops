childrens, time = gets.split(' ').map(&:to_i)
queue = gets.chomp

time.times do
  i = 0
  while i < (queue.length - 1) do
    if queue[i] == 'B' && queue[i + 1] == 'G'
      queue[i], queue[i + 1] =  queue[i + 1], queue[i]
      i = i + 1
    end
    i = i + 1
  end
end

puts queue
