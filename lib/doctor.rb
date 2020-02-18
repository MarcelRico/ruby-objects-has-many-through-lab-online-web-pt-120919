class Doctor
  
  @@all = []
  
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def appointments
    Appointment.all.select{|app| app.doctor.name == self.name}
  end
  
  def new_appointment(date,patient)
    Appointment.new(date,patient,self)
  end
  
  def patients
    appointments.collect{|app| app.patient}.first
  end
end