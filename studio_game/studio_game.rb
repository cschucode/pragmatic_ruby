class Player
  attr_reader :health
  attr_accessor :name

  def initialize(name, health = 100)
    @name = name.capitalize
    @health = health
  end

  def name=(new_name)
    new_name.capitalizet
  end

  def to_s
    "I'm #{@name} with a health of #{@health} and a score of #{score}"
  end

  def w00t
    @health += 15
    puts "#@name} got w00ted!"
  end

  def blam
    @health -= 10
    puts "#{@name} got blammed!"
  end

  def score
    @health + @name.length
  end
end

player1 = Player.new("moe")
puts player1

player2 = Player.new("larry", 60)
puts player2

player3 = Player.new("curly", 125)
puts player3

puts player2.health
puts player2.name

player2.name = "lawrence"
puts player2.name
puts player2.score
