class Doctor
  
  attr_accessor :name, :appointments, :patients
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
    @appointments = []
    @patients = []
  end 
  
  def self.all
    @@all
  end
  
  def new_appointment(patient, date)
    @appointments << Appointment.new(date, self, patient)
    @appointments[0]
  end 
  
  def patients
    @patients = @appointments[0].patient
    [@patients]
  end 
  
end 