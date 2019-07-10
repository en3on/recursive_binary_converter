def binary_converter(number, exponent = 1)
  return '' if exponent < 0
  return '0' + binary_converter(0, exponent - 1) if number.zero?

  log_of_number = Math.log(number, 2).floor

  if log_of_number >= exponent
    exponent = log_of_number
    number -= number <= 2 ? number : 2**exponent
    outcome = '1'
  else
    outcome = '0'
  end

  outcome + binary_converter(number, exponent - 1)
end

def check_result(result, expect)
  result == expect.to_s
end

print 'Enter number: '
result = binary_converter(gets.strip.to_i)

print 'Enter expected: '
puts "#{result}    #{check_result(result, gets.strip)}"

# (num % 2) + binary_converter((num - (num % 2)) / 2)

# 20 = 10100
#
# log(20, 2)
#
# log_of_number = 4
#
# is log_of_number >= exponent? yes
#
# exponent = 4
# number = 20 - 16 = 4
# outcome = '1'
#
# 1 + binary_converter(4, 3)
#
# log_of_number = 2
#
# is 2 >= 3? no
# outcome = '0'
#
# 0 + binary_converter(4, 2)
#
# log_of_number = 2
#
# is 2 >= 2? Yes
# exponent = 2
# number = 4 - 4 = 0
# outcome = 1
#
# 1 + binary_converter(0, 1)
#
