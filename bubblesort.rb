array = [3,5,1,14,4]
swap = true
while swap == true
  i = 0
  until i == (array.length-1)
    if array[i] > array [i + 1]
      array[i], array[i + 1] = array[i + 1], array[i]
    else
      swap = false
    end
    i += 1
  end
end
puts array
