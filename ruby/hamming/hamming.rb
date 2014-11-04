# Hamming Distance
# Seth Yanow - Sept 2014

class Hamming
  attr_accessor :distance

  def self.compute(left, right)

    distance = 0

    for i in 0..length(left, right)
      distance += score(left, right, i)
    end

    distance
  end

  def self.match?(left, right, index)
    left[index] == right[index]
  end

  def self.length(left, right)
    [left.length, right.length].min - 1
  end

  def self.score(left, right, i)
    match?(left, right, i) ? 0 : 1
  end


end
