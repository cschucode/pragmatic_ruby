class Project
  attr_reader :funding, :target_funding
  attr_accessor :name

  def initialize(name, initial_funding, target_funding)
    @name = name.upcase
    @funding = initial_funding
    @target_funding = target_funding
  end

  def name=(new_name)
    new_name.capitalize
  end

  def to_s
    "Project #{@name} has $#{@funding} in funding towards a goal of $#{@target_funding}."
  end

  def add_funds(amount = 25)
    @funding += amount
    puts "Project #{@name} got more funds!"
  end

  def remove_funds(amount = 15)
    @funding -= amount
    puts "Project #{@name} lost some funds!"
  end

  def funding_needed
    @target_funding - @funding
  end
end

project1 = Project.new('lmn', 500, 3000)
puts project1

project2 = Project.new('xyz', 25, 75)
puts project2

project1.remove_funds
project2.add_funds

puts project1
puts project2

puts project1.funding
puts project1.target_funding
puts project1.funding_needed
