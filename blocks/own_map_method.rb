def my_map_method(array)
  if block_given?
    results = []
    for item in array
      results.push(yield item)
    end
    return results
  end
  array.clone
end

more_squares = my_map_method([1, 2, 3]) do |n|
  n * n
end

puts more_squares

# equivalent syntax for blocks, just because:
even_more_squares = my_map_method([1, 2, 3]) { |n| n * n }

puts even_more_squares
