elements = gets.to_i
arr = gets.split(" ").map(&:to_i)

sum, answer, count, temp_sum = 0, 0, 0, 0

arr.each { |e| sum = sum + e }

if sum % 3 == 0
  sum = sum / 3
  for i in 0...(elements - 1)
    temp_sum = temp_sum + arr[i]
    answer = answer + count if temp_sum == 2 * sum
    count = count + 1 if temp_sum == sum
  end
end

puts answer
