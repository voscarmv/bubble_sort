array = [3,5,1,14,4,19,3,2,1,0,99]

def bubble_sort(arr)
  array = arr
  sorted = false
  while sorted == false
    i = 0
    sorted = true
    until i == (array.length-1)
      if array[i] > array [i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        sorted = false
      end
      i += 1
    end
  end
  return array
end

# puts array.join(", ")
bubble_sort([5, 4, 3, 2, 1])

def bubble_sort_by(arr)
    array = arr
    sorted = false
    while sorted == false
      i = 0
      sorted = true
      until i == (array.length-1)
        if yield(array[i],array[i+1]) > 0
          array[i], array[i + 1] = array[i + 1], array[i]
          sorted = false
        end
        i += 1
      end
    end
    return array
  end

bubble_sort_by(["house", "tree", "apples"]) do |left,right|
    left.length - right.length
end