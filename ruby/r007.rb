# Find nth prime number
# We will use the Sieve of Eratosthenes.
# We can brute force the MAX_SIZE constant because computers are fast

# The nth prime we want to find
n = 10001

# Maximum prime number value contained in sieve. Eratosthenes only efficient
# up to about a million so we'll use that as our limit.
MAX_SIZE = 1000000

# Sieve of Eratosthenes
sieve = Array.new(MAX_SIZE) {|x| x = true}
p = 2
while p**2 <= MAX_SIZE
  if sieve[p] == true
    (p**2).step(MAX_SIZE+1,p).each do |j|
      sieve[j] = false
    end
  end
  p += 1
end

# Find indices of all true elements in sieve and print index of nth prime
primes = sieve.each_index.select{|i| sieve[i]}
puts primes[n+1]

# Improvements: add error handling if MAX_SIZE is exceeded
    
