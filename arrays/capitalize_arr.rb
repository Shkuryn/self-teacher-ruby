=begin
Дан массив %w[cat dog tiger] . Необходимо изменить его так, чтобы все элемен-
ты были написаны с заглавной буквы.
=end

animals = %w[cat dog tiger]
animals.select! { |animal| animal.capitalize! }
p animals
