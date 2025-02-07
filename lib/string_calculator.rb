class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?
    return numbers.to_i if numbers.to_i.to_s == numbers

    numbers.split(/,|\n/).map(&:to_i).sum 
    
  end
end
