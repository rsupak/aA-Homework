# Write a method, coprime?(num_1, num_2), that accepts two numbers as args.
# The method should return true if the only common divisor between the two numbers is 1.
# The method should return false otherwise. For example coprime?(25, 12) is true because
# 1 is the only number that divides both 25 and 12.

def coprime?(num1, num2)
  factors1 = factorize(num1)
  factors2 = factorize(num2)
  factors1.none? { |fact| factors2.include?(fact) }
end

def factorize(num)
  (2..num / 2).to_a.select { |n| (num % n).zero? }
end

p coprime?(25, 12)    # => true
p coprime?(7, 11)     # => true
p coprime?(30, 9)     # => false
p coprime?(6, 24)     # => false
