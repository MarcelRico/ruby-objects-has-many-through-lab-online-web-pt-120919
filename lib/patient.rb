class Patient
  
  @@all = []
  
  attr_accessor :name
  
  def initialize(name)
    @name= name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(doctor,date)
    pp date
    pp doctor
  end
  
end