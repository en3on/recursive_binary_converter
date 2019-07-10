def binary_converter(num)
  num.zero? ? '' : binary_converter(num / 2).to_s + (num % 2).to_s
end

puts binary_converter(257);

print 'Enter number to convert to Binary: '
binary_converter(gets.chomp)
