values = %w(Ace 2 3 4 5 6 7 8 9 10 King Queen Jack)
suits = %w(Clubs Diamonds Hearts Spades)

values.each do |value|
  suits.each do |suit|
    Card.create(name: "#{value} of #{suit}")
  end
end