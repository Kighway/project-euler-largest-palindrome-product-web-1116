class LargestPalindromeProduct

  attr_reader :answer

  def initialize
    @answer = largest_palindrome_product
  end

  def self.answer
    answer
  end

  private

  def largest_palindrome_product
    i_to_char = ["9","8","7","6","5","4","3","2","1","0"]
    # i_to_char = (0..9).to_a.reverse.map { |i| i.to_s }
    i_to_char.each do |i|
      i_to_char.each do |a|
        i_to_char.each do |j|
          i_to_char.each do |b|
            i_to_char.each do |k|
              i_to_char.each do |c|
          				number = (i + j + k).to_i * (a + b + c).to_i
          				word = number.to_s
                  return number if word == word.reverse
              end
            end
          end
        end
      end
    end
  end

end
