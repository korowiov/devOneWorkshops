PRIME_LIMIT = Math.sqrt(10**12).to_i + 1
@prime_numbers = Array.new(PRIME_LIMIT, true)

def sieve
  @prime_numbers[1] = false
  i = 2
  while i*i < PRIME_LIMIT do
    if @prime_numbers[i] != false
      j = 2 * i
      while j < PRIME_LIMIT do
        @prime_numbers[j] = false
        j += i
      end
    end
    i+= 1
  end
end

sieve()

gets
gets
values = $_.split.map(&:to_i)
values.each do |value|
  svalue = Math.sqrt(value).to_i
  if (svalue * svalue == value && @prime_numbers[svalue] == true && value != 1)
    puts "YES"
  else
    puts "NO"
  end
end
