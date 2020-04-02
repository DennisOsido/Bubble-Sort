def bubble_sort(numbers)
  nums = numbers.length
  flip = false
  while flip == false
    (nums - 1).times do |x|
      if numbers[x] > numbers[x + 1]
        numbers[x], numbers[x + 1] = numbers[x + 1], numbers[x]
        flip = true
      end
    end
    next if flip == true
  end
  numbers
end

puts 'Unsorted: [1, 5, 2, 4, 3, 6]'
print 'Sorted: '
p bubble_sort([1, 5, 2, 4, 3, 6])

def bubble_sort_by(words)
  word = words.length
  flip = false
  while flip == false
    (word - 1).times do |x|
      if words[x] < words[x + 1]
        words[x], words[x + 1] = words[x + 1], words[x]
        flip = true
      end
    end
    next if flip == true
  end
  words
end

puts
p bubble_sort_by(%w[hi hello hey])

bubble_sort_by(%w[hi hello hey]) do |left, right|
  left.length - right.length
end
