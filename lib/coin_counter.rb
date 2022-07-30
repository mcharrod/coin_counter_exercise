class CoinCounter
  def initialize
    @total_cents = 0
    @remainder = 0
    @quarter_count = 0
    @dime_count = 0
    @nickel_count = 0
    @penny_count = 0
  end

  def begin_count
    puts "enter an amount in cents to count coins:"
    user_input = gets.chomp

    quarter_counter(user_input)

    puts "you have #{@quarter_count} quarters, #{@dime_count} dimes, #{@nickel_count} nickels, and #{@penny_count} pennies."
  end

  def is_number?(input)
    (input).to_i.to_s == input.to_s
  end

  def quarter_counter(cents)
    if is_number?(cents) == false
      puts "that's no number silly"
    elsif
      @quarter_count = cents.to_i / 25
      @remainder = cents.to_i % 25
      dime_counter(@remainder)
    end
  end

  def dime_counter(cents)
    @dime_count = cents.to_i / 10
    @remainder = cents.to_i % 10
    nickel_counter(@remainder)
  end

  def nickel_counter(cents)
    @nickel_count = cents.to_i / 5
    @remainder = cents.to_i % 5
    penny_counter(@remainder)
  end

  def penny_counter(cents)
    @penny_count = @remainder
  end
end
