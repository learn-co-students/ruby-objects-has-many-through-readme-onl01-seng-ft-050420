class Waiter
  attr_accessor :name, :years_of_experience
  
  @@all = []
  
  def initialize(name, experience)
    @name = name 
    @years_of_experience = experience 
    @@all << self
    @meals = []
  end 
  
  def self.all 
    @@all 
  end 
  
  def new_meal (custumer, total, tip)
    Meal.new(self,custumer,total,tip)
  end 
  
  def meals
    Meal.all.select {|meal| meal.waiter == self}
  end 
  
  def best_tipper
    Meal.all.sort {|a, b| a.tip <=> b.tip}[-1].customer
  end 
end