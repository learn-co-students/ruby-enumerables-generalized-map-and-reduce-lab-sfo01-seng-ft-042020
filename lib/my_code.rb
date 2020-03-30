def map(arr)
  newarr = []
  x = 0 

  while x < arr.length do 
    newarr.push(yield(arr[x]))
    x +=1
  end 
  return newarr
end 


def reduce(arr, *start)
  if(start[0])
    val = start[0]
    x = 0
  else 
    val = arr[0]
    x = 1
  end 

  while x < arr.length do 
    val = yield(val, arr[x])
    x += 1
  end 
  return val 
end 


