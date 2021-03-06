class Array
  # Sums up an array.
  #
  # Examples:
  #   [1,3,6].sum # => 10
  #
  # Returns an Integer.
  def sum
    self.inject(0) { |sum,i| sum + i.to_f }
  end

  # Average out the values of a collection of Arrays. The array gets flattened,
  # so you can safely toss it a stack of Arrays.
  #
  # This is present in the rstats gem we use, but I'd rather use our #sum method
  # because it can handle strings.
  #
  # Examples:
  #   [[2,4],[6],8] # => 5
  #
  # Returns a Float.
  def average
    self.flatten!
    self.sum.to_f / self.size
  end
end