class StringCalculator
  def self.add numbers
    0
    if numbers.empty?
      0
    else
      numbers.to_i
    end
    numbers.split(',').map(&:to_i).sum
  end
end