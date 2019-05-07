require 'pry'
class Doctor 
  attr_accessor :name 
  @@all = []
  
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all
    @@all 
  end 
  
  def new_appointment(patient, date)
    Appointment.new(patient, date, self)
    # doctor_who.new_appointment(hevydevy, 'Friday, January 32nd')
  end
  
  def appointments
    Appointment.all.select {|appt| appt.doctor == self}
   end 
   
   def patients
     self.appointments.collect {|app| app.patient}
   end 
  end 


# **The `Doctor` model:**

# - The `Doctor` class needs a class variable `@@all` that begins as an empty array.
# - The `Doctor` class needs a class method `.all` that lists each doctor in the
#   class variable.
# - A doctor should be initialized with a name and be saved in the `@@all` array.
# - The `Doctor` class needs an instance method, `#new_appointment`, that takes in a
#   an instance of the `Patient` class and a date, and creates a new `Appointment`. That
#   `Appointment` should know that it belongs to the doctor
# - The `Doctor` class needs an instance method, `#appointments`, that iterates
#   through all `Appointment`s and finds those belonging to this doctor.
# - The `Doctor` class needs an instance method, `#patients`, that iterates over
#   that doctor's `Appointment`s and collects the patient that belongs to each
#   `Appointment`s.