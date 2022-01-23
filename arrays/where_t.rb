=begin
Дан массив %w[cat dog tiger] . Нужно вернуть массив, состоящий только из
элементов, где встречается символ t .
=end

animals = %w[cat dog tiger]
a = animals.map.select { |animal| animal.include? "t" }
p a
