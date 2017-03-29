answer = {}
n = gets.to_i
prices = gets.split.map(&:to_i)
days = gets.to_i

prices.sort!


prices.each_with_index do |x, index|
    answer[x] = index if answer[x].nil?
end

days.times do
   money = gets.to_i
   value = prices.bsearch{ |x| x > money }
   puts value.nil? ? n : answer[value]
end
