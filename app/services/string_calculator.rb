class StringCalculator
  def self.add numbers
    parts = numbers.split(/,|\n/)
    negatives = parts.select { |p| p.to_i < 0 }
    raise "negative numbers not allowed #{negatives.join(',')}" if negatives.any?
    parts.map(&:to_i).sum
  end
end