# Solution to Problem No.2 of Project Euler

# Find a given fibonnaci number
def fibb(n)
  a = 0
  b = 1
  n.times do
    tmp = a+b
    a = b
    b = tmp
  end
  return b
end

ii = 1
val = 0
sum = 0
limit = 400
while val <= limit
  val = fibb(ii)
  # doesnt break early enough
  if (val&2) == 0
    sum = sum+val
  end
  ii += 1
end

puts sum
