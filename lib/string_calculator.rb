class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?
    return numbers.to_i if numbers.to_i.to_s == numbers

    if numbers.start_with?("//")
      delimiter, numbers = numbers.split("\n", 2)
      delimiter = delimiter[2..]
    else
      delimiter = ",|\n"
    end
  
    num_list = numbers.split(/#{delimiter}/).map(&:to_i)
    negatives = num_list.select(&:negative?)

    raise "negative numbers not allowed: #{negatives.join(', ')}" unless negatives.empty?

    num_list.sum

  end
end

# puts StringCalculator.new.add("1")
# puts StringCalculator.new.add("1,2")
# puts StringCalculator.new.add("1,2,3,4,5")
# puts StringCalculator.new.add("1\n2,3")
# puts StringCalculator.new.add("//;\n1;2")
# puts StringCalculator.new.add("1,-2,3,-4") # raise an error.


