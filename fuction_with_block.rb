# Реализуйте функцию sum_of(), которая принимает на вход коллекцию
# (все что можно итерировать с помощью метода each()) чисел и блок.
# Функция должна вернуть сумму всех значений коллекции после применения блока к каждому из значений.

def sum_of(range, &block)
  sum = 0
  for element in range
    sum += block.call element
  end
  sum
end

arr = [1, 2, 3]
sum = sum_of (arr) { |number| number }

p sum
