def bubble_sort (numbers)

  nums = numbers.length
  flip = false

  while flip == false do 
    (nums-1).times do |x|
      if numbers[x] > numbers[x+1]
        numbers[x], numbers[x+1] = numbers[x+1], numbers[x]
        flip = true
      end  
    end
  next if flip == true
  end  
  numbers		
end

p bubble_sort([1, 5, 2, 4, 3, 6])