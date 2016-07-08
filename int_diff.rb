def int_diff(arr, n)
  compare_array = []
  (arr.count-1).times do
    element = arr.shift
    arr.each { |el| compare_array << [element, el] if (element - el).abs == n}
  end
  compare_array.count
end
