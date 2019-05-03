class Patient 
  
  attr_accessor :name, :appointments, :doctors
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self 
    @appointments = []
  end 
  
  def self.all
    @@all 
  end 
  
  def new_appointment(doctor, date)
    @appointments << Appointment.new(date, doctor, self)
    @appointments[0]
  end
  
  def doctors
    @doctors = @appointments.collect{|x| x.doctor}
  end  
  
end 