class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    result = []
    punc = ['?', '.', '!', ',']
    str.split.each { |word|
      if word.length > 4
        toAdd = ""
        if word.slice(0) === word.slice(0).capitalize
          toAdd = "Marklar"
        else
          toAdd = "marklar"
        end
        if punc.include?(word[-1])
          toAdd += word[-1]
        end
      else
        result.push word
      end
      result.push toAdd
    }
    return result.compact.join(" ")
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    i = 0 
    fibonacci = []
    sum = 0;

    while i < nth do
      if i === 0 || i === 1
        fibonacci += [1]
      else
        fibonacci += [fibonacci[i-1] + fibonacci[i-2]]
      end
      i += 1
    end

    fibonacci.each do |num|
      if num % 2 === 0
        sum += num
      end
    end

    return sum
  end

end
