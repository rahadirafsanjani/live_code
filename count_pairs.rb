def count_pairs array, target
  result = []
  data_bind = {}
  array.each do | data |
    expected = target - data
    if data_bind[expected]
      result << [data, expected] unless result.include?([data, expected]) || result.include?([expected, data])
    end

    data_bind[data] = true
  end

  puts result.inspect
end

count_pairs([1, 3, 2, 2, 3, 4], 5)
count_pairs([1, 1, 1, 1], 2)
count_pairs([1, 2, 3, 4, 5], 7)
