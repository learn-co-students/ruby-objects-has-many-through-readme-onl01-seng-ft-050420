class Customer
  attr_accessor :name, :age
  
  @@all = []
  
  def initialize(name, age)
    @age = age 
    @name = name 
    @@all << self
    @meals = []
    @waiters = []
  end 
  
  def self.all 
    @@all
  end 
  
  def new_meal(waiter, total, tip) 
    meal = Meal.new(waiter,self,total,tip)
    @meals << meal
    @waiters << waiter
  end 
  
  def meals 
    @meals
  end 
  
  def waiters
    @waiters
  end 
end