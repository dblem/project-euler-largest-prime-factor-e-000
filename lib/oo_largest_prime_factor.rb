class LargestPrimeFactor
  
  def initialize(input)
    @input = input.to_i
    @input_root = Math.sqrt(input).to_i
    @largest_prime = 0
  end

  def is_prime?(num)
    num_root = Math.sqrt(num).to_i
    (2..num_root).all? do |x|
      num % x != 0
    end
  end
  
  def number
    @input_root.downto(1) do |num|
      if @largest_prime == 0
        @largest_prime = num if @input % num == 0 && is_prime?(num) == true
      else
        break
      end
    end
    @largest_prime
  end
  
end