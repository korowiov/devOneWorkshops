def is_prime?(number, sqrt_number)
  is_prime = true
  for i in 2...sqrt_number
    if number % i == 0
      is_prime = false
      break
    end
  end
  is_prime
end

gets
gets
values = $_.split.map(&:to_i)
values.each do |value|
  svalue = Math.sqrt(value).to_i
  if (svalue * svalue == value && is_prime?(value, svalue) == true && value != 1)
    puts "YES"
  else
    puts "NO"
  end
end
