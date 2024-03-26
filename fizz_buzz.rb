### Problem
# Given an integer n, return a string array answer (1-indexed) where:

# answer[i] == "FizzBuzz" if i is divisible by 3 and 5.
# answer[i] == "Fizz" if i is divisible by 3.
# answer[i] == "Buzz" if i is divisible by 5.
# answer[i] == i (as a string) if none of the above conditions are true.
 

# Example 1:

# Input: n = 3
# Output: ["1","2","Fizz"]
# Example 2:

# Input: n = 5
# Output: ["1","2","Fizz","4","Buzz"]
# Example 3:

# Input: n = 15
# Output: ["1","2","Fizz","4","Buzz","Fizz","7","8","Fizz","Buzz","11","Fizz","13","14","FizzBuzz"]
 

# Constraints:

# 1 <= n <= 104

### Solution
# @param {Integer} n
# @return {String[]}
def fizz_buzz(n)
    raise ArgumentError, "Number must be an integer" unless n.is_a?(Integer)
    raise ArgumentError, "Number must be between 1 and 10,000" if n < 1 || n > 10000

    numerical_array = (1..n).to_a
    result = []

    numerical_array.each do |num|
        if divisible_by_three?(num) && divisible_by_five?(num)
            element = "FizzBuzz"
        elsif divisible_by_three?(num)
            element = "Fizz"
        elsif divisible_by_five?(num)
            element = "Buzz"
        else
            element = num.to_s
        end

        result << element
    end
    result
end

def divisible_by_three?(n)
    n % 3 == 0
end

def divisible_by_five?(n)
    n % 5 == 0
end
