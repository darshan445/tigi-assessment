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
  
    numbers.split(/#{delimiter}/).map(&:to_i).sum
    
  end
end
