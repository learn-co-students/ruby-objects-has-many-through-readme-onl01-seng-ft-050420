class Meal
#this is our joining model

attr_accessor :waiter, :customer, :total, :tip
#attr_readers/writers are creating methods to access or assign the value of that variable

@@all = []
def initialize(waiter, customer, total, tip=0)
  @waiter = waiter
  @customer = customer
  @total = total
  @tip = tip
  @@all << self
end

def self.all
  @@all
end

end