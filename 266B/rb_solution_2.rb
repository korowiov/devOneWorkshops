childrens, time = gets.split(' ').map(&:to_i)
queue = gets.chomp

time.times do
  queue.gsub!(/BG/, 'GB')
end

puts queue
