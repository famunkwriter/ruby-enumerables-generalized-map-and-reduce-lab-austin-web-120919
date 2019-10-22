def map(source_array)
  array = []
  counter = 0
  while counter < source_array.length do
    array.push(yield(source_array[counter]))
    counter += 1
  end
array
end

def reduce(source_array, sv=nil)
  if sv
    sum = sv
    counter = 0
  else
    num1 = source_array[0]
    counter = 1
  end
  while counter < source_array.length
    sum = yield(num1, source_array[i])
    counter += 1
  end
  sum
end
