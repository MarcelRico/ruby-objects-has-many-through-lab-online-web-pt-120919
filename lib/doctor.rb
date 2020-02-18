class Doctor
  
  @@all = []
  
  attr_accessor :name
  
  def initialize(name)
    @name= name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(patient,date)
    Appointment.new()
  end
  
  def appointments
    Appointment.all.select{|app| app.doctor.name == @name}
  end
  
end