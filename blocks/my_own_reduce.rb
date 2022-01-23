def my_reduce_method(array)
  if block_given?
    results = array[0]
    i = 1
    while i <= array.size - 1
      results = yield(results, array[i])

      i += 1
    end
    return results
  end
  array.clone
end

reduce_result = my_reduce_method([1, 2, 3, 4, 5]) do |results, n|
  results += n
end

puts reduce_result
