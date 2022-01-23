def my_select_method(array)
  if block_given?
    results = []
    for item in array
      if yield item
        results.push(item)
      end
    end
    return results
  end
  array.clone
end

new_array = my_select_method([1, 2, 3]) do |n|
  n.even?
end

puts new_array
