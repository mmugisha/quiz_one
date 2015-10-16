class Card

	attr_accessor :rank, :suit
	def initialize(rank, suit)
		@rank = rank
		@suit = suit
	end

	def output_card
		puts "#{self.rank} of #{self.suit}"
	end

	def self.random_card
		Card.new(rand(10), :spades)
	end
end

class Deck
	def initialize 
		@cards = []
		@cards << Card.new(:ace, :diamonds)
		@cards << Card.new(:ace, :clubs)
		@cards << Card.new(:ace, :hearts)
		@cards << Card.new(:ace, :spades)
		@cards << Card.new(2, :clubs)
		@cards << Card.new(2, :diamonds)
		@cards << Card.new(2, :hearts)
		@cards << Card.new(2, :spades)
		
	end

	def shuffle
		@cards.shuffle!
	end

	def deal
		@cards.shift 
	end

end



deck = Deck.new
puts deck.deal.output_card

#card = Card.random_card
#card.output_card