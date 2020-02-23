# Your Code Here
def map(s)
  new = []
  i = 0
  while i < s.length do
    new.push(yield(s[i]))
    i += 1
  end
  new
end

def reduce(s, sp=nil)
  if sp
    accum = sp
    i = 0
  else
    accum = s[0]
    i = 1
  end
  while i < s.length do
    accum = yield(accum, s[i])
    i += 1
  end
  accum
end