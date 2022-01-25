#     assert { product(1, 3, multi) == 6 }
#     assert { product(2, 4, multi) == 24 }

sum = ->(num1, num2) { return num1 + num2 }
multi = ->(num1, num2) { return num1 * num2 }
pow = ->(num1, num2) { return num1 ** num2 }
#  assert { product(2, 4, pow) == 4096 }

def product(num1, num2, pr)
  # BEGIN (write your solution here)
  (num1..num2).reduce(&pr)
  # END
end

# p product(1, 1, sum)
# p product(1, 2, sum)
p product(2, 4, pow)
# p product(2, 4, multi)
# p product(1, 2, multi)

# def product(num1, num2, func)
#     # BEGIN
#     return num1 if num1 == num2

#     func.call(product(num1, num2 - 1, func), num2)
#     # END
#   end
