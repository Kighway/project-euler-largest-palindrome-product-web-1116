# Implement your procedural solution here!
#EULER PROJECT PROBLEM 4  # Largest Palindrome Product #
# Find the largest palindrome made from the product of two 3-digit numbers.
#
# eg A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

#solution by Kyle Tulod tulod.ky13@gmail.com
#solved using Ruby programming language

def largest_palindrome_product

i_to_char = ["9","8","7","6","5","4","3","2","1","0"]

largest_palindrome_product = nil #its nil initialization is used to test if it has been found

i_to_char.each do |i|           #the order of the descent of the indices i,j,k/a,b,c and the values in array i_to_char is designed to find the largest_palindrome_product FIRST, and ONLY the LARGEST_palindrome_product
  i_to_char.each do |a|
    i_to_char.each do |j|
      i_to_char.each do |b|
        i_to_char.each do |k|
          i_to_char.each do |c|
    				number = (i + j + k).to_i * (a + b + c).to_i
    				word = number.to_s
    		    if word.length%2 == 0                                                                 #it's even.
              if  word.slice(0,word.length/2) == word.slice(word.length/2, word.length).reverse   #is it a palindrome?
        		    largest_palindrome_product = number
              end
    				elsif word.slice(0,word.length/2 -1) == word.slice(word.length/2 + 2, word.length).reverse #must be odd. dont bother checking. is it a palindrome?
    					 largest_palindrome_product = number
    				end
            break if largest_palindrome_product  #found largest_palindrome_product, so break out of all the loops.
          end
          break if largest_palindrome_product
        end
        break if largest_palindrome_product
      end
      break if largest_palindrome_product
    end
    break if largest_palindrome_product
  end
  break if largest_palindrome_product
end

return largest_palindrome_product

end

#correct_answer = 906609

#solution by Kyle Tulod tulod.ky13@gmail.com
#solved using Ruby programming language
