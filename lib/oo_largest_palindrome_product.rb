# Implement your object-oriented solution here!

class LargestPalindromeProduct

  def palindrome?(result)
    result == result.to_s.reverse.to_i
  end

  def answer
    (100..999).map do |first_num|
      (first_num..999).map do |second_num|
        first_num * second_num
       end.select {|results| palindrome?(results)}
    end.flatten.max
  end

end
