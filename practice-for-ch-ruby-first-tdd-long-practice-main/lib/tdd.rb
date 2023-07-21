class Array

  def my_uniq
    self.uniq
  end


  # find pairs that add up to zero
  def two_sum
    result = []
    self.each_with_index do |el1, idx1|
      self.each_with_index do |el2, idx2|
        if idx2 > idx1 && el1 + el2 == 0
          result << [idx1, idx2]
        end
      end
    end
    result
  end

  def my_transpose
    result = []
    self.each_with_index do |row, idx1|
      row.each_with_index do |col, idx2|
        result << [idx1, idx2]
      end
    end
    result
  end

end

p [1, 2, 1, 3, 3].my_uniq
p [-1, 0, 2, -2, 1].two_sum
