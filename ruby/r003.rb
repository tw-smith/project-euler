x = 600851475142


def FindSmallestPrimeFactor(n)
  for ii in 2..(Math.sqrt(n)+1)
    if n % ii == 0
      return ii
    end
  end
  return n
end


def FindLargestPrimeFactor(x)
  t = true
  while t == true
    p = FindSmallestPrimeFactor(x)
    if p == x
      return x
    else
      x = x/p
    end
  end
end


y = FindLargestPrimeFactor(x)
puts y
  


