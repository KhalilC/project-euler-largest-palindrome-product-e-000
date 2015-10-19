# Implement your procedural solution here!

def palindrome?(result)
  result == result.to_s.reverse.to_i
end

def largest_palindrome_product
  (100..999).map do |first_num|
    (first_num..999).map do |second_num|
      first_num * second_num
     end.select {|results| palindrome?(results)}
  end.flatten.max
end



