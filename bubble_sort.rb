def bubble_sort(array)
  (array.length - 1).times do |i|
    (array.length - i - 1).times do |a|
      array[a], array[a + 1] = array[a + 1], array[a] if array[a] > array[a + 1]
    end
  end
  array
end

def bubble_sort_by(array)
  (array.length - 1).times do |i|
    (array.length - i - 1).times do |a|
      array[a], array[a + 1] = array[a + 1], array[a] if yield(array[a], array[a + 1]). positive?
    end
  end
  array
end

arr = bubble_sort_by([10, 8, 5, 9, 4]) do |x, y|
  x - y
end
print arr
