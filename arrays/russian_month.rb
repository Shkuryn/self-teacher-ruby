=begin
Создайте массив с названиями месяцев на русском языке. Извлеките месяцы
с самым коротким и с самым длинным названием.
=end
hash = {}

months = %w/январь февраль март апрель май июнь июль август сентябрь октябрь ноябрь декабрь/
months.each do |month|
  hash[month] = month.size
end
puts hash.key(hash.values.max)
puts hash.key(hash.values.min)
