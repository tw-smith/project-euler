n = 10

# Sum of n squares can be represented by (n*(n+1)*(2n+1))/6

sum_of_squares = (n*(n+1)*((2*n)+1))/6

# Square of sums can be calculated using ruby functions
square_of_sums = ((n .downto 1).sum)**2

diff = square_of_sums - sum_of_squares

puts diff
