  puts "Return all the prime numbers from 0 --> number you enter:"
  max = gets.chomp.to_i
  
  def prime_printer(max=500)
    sieve = []
    (2..max).each {|i| sieve[i] = i} #all the numbers to max
      (2..Math.sqrt(max)).each do |i| # per algorithm
        (i*i).step(max, i) {|j| sieve[j] = nil} if sieve[i]
      end
    sieve.compact!
    p sieve
  end

  prime_printer(max)
